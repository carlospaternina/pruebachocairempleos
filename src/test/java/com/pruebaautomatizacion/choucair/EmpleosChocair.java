package com.pruebaautomatizacion.choucair;


import java.io.File;


import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class EmpleosChocair {
	
	
	private WebDriver driver;
	By empleosLinkLocator = By.linkText("Empleos");
	By buttonSearchJobs = By.xpath("//input[@value=\"Search Jobs\"]");
	By jobListAnalistaMigracion = By.className("post-10694");
	By buttonApplyforJob = By.xpath("//input[@value=\"Apply for job\"]");
	//By sendApplication = By.xpath("//input[@value=\"Send Application\"][@type=\submit\"]");
	//By sendApplication = By.name("job_id");
	//By sendApplication = By.className("p.button");
	//By sendApplication = By.tagName("p");
	

	@Before
	public void setUp() {
		
		System.setProperty("webdriver.chrome.driver", "./src/test/resources/chromedriver/chromedriver");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.choucairtesting.com/");
	}
	
	
	@Test
	public void testEmpleoPage() throws InterruptedException {
		
		driver.findElement(empleosLinkLocator).click();
		
		
		WebElement search_keywords = driver.findElement(By.id("search_keywords"));
		search_keywords.clear();
		search_keywords.sendKeys("analista");
		Thread.sleep(2000);
		
		WebElement search_location = driver.findElement(By.id("search_location"));
		search_location.clear();
		search_location.sendKeys("Medellin");
		Thread.sleep(1000);
	
		driver.findElement(buttonSearchJobs).click();
		Thread.sleep(4000);
		
		driver.findElement(jobListAnalistaMigracion).click();
		Thread.sleep(2000);
		
		driver.findElement(buttonApplyforJob).click();
		Thread.sleep(1000);
		
		WebElement nombreCompleto = driver.findElement(By.id("nombre-completo"));
		nombreCompleto.clear();
		nombreCompleto.sendKeys("Carlos Gustavo");
		
		
		WebElement correoElectronico = driver.findElement(By.id("correo-electronico"));
		correoElectronico.clear();
		correoElectronico.sendKeys("capaar1976@gmail.com");
		
		
		WebElement celularTelefonoContacto = driver.findElement(By.id("celular-o-telefono-de-contacto"));
		celularTelefonoContacto.clear();
		celularTelefonoContacto.sendKeys("300558754");
	
		
		WebElement estudiosFormales = driver.findElement(By.id("que-estudios-formales-tienes-o-en-que-semestre-te-encuentras-actualmente"));
		estudiosFormales.clear();
		estudiosFormales.sendKeys("Ingenieria en Sistemas");
		
		
		WebElement experiencia = driver.findElement(By.id("que-tiempo-de-experiencia-certificada-tienes-en-pruebas-o-en-desarrollo-de-softwaresi-aplica"));
		experiencia.clear();
		experiencia.sendKeys("1 Año");
	
		
		WebElement conocesAutomatizacion = driver.findElement(By.id("conoces-de-automatizacion-de-pruebas-te-gustaria-aprendersi-aplica"));
		conocesAutomatizacion.clear();
		conocesAutomatizacion.sendKeys("Nivel básico");
	
		
		WebElement aspiracionSalarial = driver.findElement(By.id("cual-es-tu-aspiracion-salarial"));
		aspiracionSalarial.clear();
		aspiracionSalarial.sendKeys("1800000");
	
		
		WebElement disponibilidad = driver.findElement(By.id("si-eres-seleccionado-que-disponibilidad-de-tiempo-para-ingresar-tendrias"));
		disponibilidad.clear();
		disponibilidad.sendKeys("Inmediata");
		
		
		WebElement mensajeAdicional = driver.findElement(By.id("mensaje-adicional"));
		mensajeAdicional.clear();
		mensajeAdicional.sendKeys("Esto es un caso de prueba, no ser tenido en cuenta por favor");
		
		File file = new File ("src//files//Hoja_de_vida.pdf");
		String path = file.getAbsolutePath();
		
		driver.findElement(By.id("cv")).sendKeys(path);
		Thread.sleep(3000);
		//driver.findElement(sendApplication).click();
	

	}
	@After
	public void tearDown() {
		
		driver.quit();
	}
}
