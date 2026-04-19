<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="70s.aspx.cs" Inherits="_70s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <h1>The 70s</h1>
    <h2 id="beginning">The Beginning</h2>
    <h3>Of the league</h3>
    <figure>
        <img src="images/ALPINE.jpg"/>
        <figcaption>Alpine A110</figcaption>
    </figure>
    <p>The World Rally Championship began in 1973 as the first global championship created specifically for rally manufacturers, giving them a way to compete against each other on an international 
        level. Throughout the 1970s, it featured long and demanding rallies that tested both the drivers and the cars to their limits. These events took place on a variety of surfaces, including snow,
        gravel, and rough, uneven roads in different parts of the world, making each rally unique and challenging. Major manufacturers such as Ford Motor Company, Fiat, and Alpine competed in famous 
        events like the Monte Carlo Rally and the Safari Rally. These tough and demanding races helped establish rally racing as one of the hardest and most extreme forms of motorsport in the world. But one team dominated this era:
</p>
    <h2 id="lancia">LANCIA</h2>
    <h3> And the Stratos HF</h3>
    <figure>
        <img src="images/stratos.jpg"/>
        <figcaption>Lancia Stratos</figcaption>
    </figure>
    
    <p>In the mid-1970s, Lancia dominated the WRC with the purpose-built Lancia Stratos HF, a car that was designed specifically for rally racing instead of being adapted from a normal road 
        car like many others at the time. This gave it a big advantage, as everything about the car was made to perform better on rally stages. It was powered by a strong V6 engine from Ferrari,
        which gave it both speed and a unique sound. Driven by champions like Sandro Munari, the Stratos proved to be extremely successful and hard to beat. It went on to win three consecutive 
        manufacturers’ titles from 1974 to 1976, showing just how dominant it was during that era, and it became one of the most iconic and recognizable rally cars ever built.
    </p>
    <h2>Watch the Stratos in action!</h2>
    <div class="video-container">
    <iframe 
        width="560" 
        height="315" 
        src="https://www.youtube.com/embed/P0GHtXWXOo8" 
        title="Watch the STRATOS in action!" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
        allowfullscreen>
    </iframe>
    </div>
        <a href="https://en.wikipedia.org/wiki/Lancia_Stratos" target="_blank">For more information about the LANCIA STRATOS</a>
  
  
  <h2 id="drivers">The Drivers</h2>
  <h3>Heroes of the early years</h3>
    <figure>
        <img src="images/Sandro%20Munari.png" />
        <figcaption>Sandro Munari</figcaption>
    </figure>
    <p>While the cars and manufacturers played a huge role in shaping the early years of the WRC, it was the drivers who truly brought the sport to life. The 1970s saw the rise of fearless competitors
        who had to rely not only on skill, but also bravery and endurance to survive the harsh rally conditions. Events often lasted several days, with little rest and constantly changing weather and
        terrain, pushing drivers to their physical and mental limits. Unlike modern rallying, safety measures were minimal, making every stage unpredictable and dangerous.</p>
    <figure>
        <img src="images/Björn%20Waldegård.jpg" />
        <figcaption>Björn Waldegård</figcaption>
    </figure>
    <p>Drivers like Sandro Munari, Björn Waldegård, and Hannu Mikkola became some of the first stars of the championship, each known for their unique driving styles and determination. They had to
        master different surfaces and adapt quickly to whatever challenges the rally threw at them, from icy mountain passes to dusty desert roads. Their performances helped build the reputation of
        rally racing as a true test of skill and courage. These early heroes didn’t just win rallies — they helped define what it meant to be a rally driver, setting the standard for generations to come.</p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

<asp:Content ID="ContentAside" ContentPlaceHolderID="ContentPlaceHolderAside" Runat="Server">
    <div class="page-nav">
        <h1>Home</h1>
        <ul>
            <li><a href="#beginning">The Beginning</a></li>
            <li><a href="#lancia">LANCIA</a></li>
            <li><a href="#drivers">The Drivers</a></li>
        </ul>
    </div>
</asp:Content>

