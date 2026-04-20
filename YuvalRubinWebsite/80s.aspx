<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="80s.aspx.cs" Inherits="_80s" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" Runat="Server">
    <h1>The 80s</h1>
    <h2 id="groupb">Group B</h2>
    <h3>The revolution of speed</h3>
    <figure>
        <img src="images/groupB.jpg" />
        <figcaption>Lancia evo37</figcaption>
    </figure>
    <p>In the early 1980s, the World Rally Championship entered one of its most famous and controversial periods with the introduction of Group B regulations in 1982. These new rules allowed
        manufacturers much more freedom in car design, leading to an explosion of innovation and performance. Cars became lighter, more powerful, and more advanced than ever before, with turbocharged
        engines producing incredible levels of horsepower. Some of these machines could accelerate from 0 to 100 km/h in just a few seconds, even on loose gravel or dirt roads.
</p>
    <p>Manufacturers like Audi, Peugeot, Ford, and Lancia all built extreme cars to take advantage of the new rules. The Audi Quattro introduced all-wheel drive to rallying, giving it a huge advantage
        on slippery surfaces, while cars like the Peugeot 205 T16 and Lancia Delta S4 pushed technology even further. However, this rapid increase in performance came with serious risks. Safety
        measures did not improve at the same pace, and the cars became too fast for both drivers and spectators.</p>

      <figure>
          <img src="images/205evo.jpg" />
        <figcaption>Puegot 205 evo</figcaption>
      </figure>
    <p>
        By 1986, after several tragic accidents, including fatal crashes involving drivers and fans, the FIA decided that Group B had become too dangerous. The category was banned at the end of the season,
        but its legacy remains. Group B is still remembered today as the most thrilling and wild era in rally history, where innovation had almost no limits.
    </p>

    <h2 id="vs">Lancia vs Audi</h2>
    <h3>Battle for dominance</h3>
    
    <p>
        One of the most exciting rivalries of the 1980s WRC was between Lancia and Audi, two manufacturers with very different approaches to rallying. Audi revolutionized the sport with its Quattro system,
        proving that all-wheel drive could provide a major advantage on loose and unpredictable surfaces. Their cars, like the Audi Quattro, had incredible traction and stability, especially in wet,
        snowy, or gravel conditions.
    </p>

    <figure>
        <img src="images/audivslancia.jpg" />
        <figcaption>Audi Quattro A2 & Lancia evo37</figcaption>
    </figure>
    <p>
        But as the competition intensified, Lancia adapted. They introduced more advanced machines like the Delta S4, which combined both supercharging and turbocharging to deliver incredible power. Meanwhile,
        Audi continued to develop its Quattro models, creating faster and more aggressive versions like the S1. This rivalry pushed both teams to their limits and played a huge role in shaping the future of rally
        car design, especially the widespread adoption of all-wheel drive.
    </p>


  
  
  <h2 id="legends">The Legends</h2>
  <h3>Drivers of fearless skill</h3>

    <p>While the cars of the 1980s were extraordinary, it was the drivers who truly defined the era. Group B demanded a level of bravery and control that few could match. These drivers had to handle machines with
        massive power, often on narrow roads lined with spectators standing dangerously close to the action. It required not only skill, but also nerves of steel. Drivers like Walter Röhrl, Hannu Mikkola, and Ari
        Vatanen became legends of the sport, each known for their unique driving styles and incredible performances across all types of terrain.</p>
    
        <p>Among them was Henri Toivonen, one of the most talented drivers of his generation, who quickly rose to prominence with his speed and determination. However, the dangers of Group B were always present, and in
        1986, Toivonen and his co-driver Sergio Cresto tragically lost their lives during the Tour de Corse. This moment shocked the rally world and became a major reason for the end of Group B. Despite its short lifespan,
        the era left behind unforgettable memories and legendary drivers who are still remembered today as some of the greatest in rally history.</p>
    
    <figure>
        <img src="images/Henri_Toivonen.jpg" />
        <figcaption>Henri Toivonen</figcaption>
    </figure>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderScript" Runat="Server">
</asp:Content>

<asp:Content ID="ContentAside" ContentPlaceHolderID="ContentPlaceHolderAside" Runat="Server">
    <div class="page-nav">
        <h1>The 80S</h1>
        <ul>
            <li><a href="#groupb">Group B</a></li>
            <li><a href="#vs">Lancia VS Audi</a></li>
            <li><a href="#legends">The Legends</a></li>
        </ul>
    </div>
</asp:Content>
