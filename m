Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC37BE013C2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 14:55:34 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so870790pbb.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 14:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc
	:x-gm-message-state:content-type;
	bh=9ot4m01Ywvbj/aZpIXM1MusyTcmCpEGkZnDnr7VQwEc=;
	b=Wf/FapeeZitf2Dn8wjL/ga/smBm49RlI2BEXecbPpozGDw6GgFsSobntodD4ODY9IK
	FexkmM2pe3enzny7T5Diznx5dpJGCfW3fMogVEucl3RgP2kRCBBkW81fv7KBUvOFi9gD
	hsE4Jbicpf0s6f6BGBc2GzpZJwx0P7zJaksdQyAdLGNMjnuT7WSXpl9rj9ZSmQzn5RtV
	qIrzVeF2g8VFaYuOj9DOL3ATtre37aJmJURlPoGrNl440puP6WVxRJpRrGTvAfpylEx0
	E4e3tTQWhJEjoJnRaqtyXJP5NnSf820RlbP+uIdMroV5AprBcpw1SN1Zczb8vJpN6j8Y
	g6ig==
MIME-Version: 1.0
Received: by 10.68.203.65 with SMTP id ko1mr3772739pbc.3.1333058134476; Thu,
	29 Mar 2012 14:55:34 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Thu, 29 Mar 2012 14:55:34 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1203291746350.19207@oneiric>
References: <alpine.DEB.2.02.1203291746350.19207@oneiric>
Date: Thu, 29 Mar 2012 14:55:34 -0700
X-Google-Sender-Auth: bDO_HTgoMBuW2ZHPorBO-eNTwDA
Message-ID: <CA+gsK-qYyhBU5gXHAECt=udaX8DpoAz0Y-t5urya8qqimXBgDQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQnXgeJVNIouah4dhKo0kxym8a79F4j90hhL+0IbwLsfQDVFkjrO8wNM1Q/3vruenSbFaS9m
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: which yocto doc explains bitbake assignment variations?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 21:55:34 -0000
Content-Type: multipart/alternative; boundary=047d7b10cb1192072704bc68c813

--047d7b10cb1192072704bc68c813
Content-Type: text/plain; charset=ISO-8859-1

Robert,

I don't think that the YP manuals do. That's more Bitbake. However, here is
some copied out of my docs. (List excuse the formatting. It's copied from
an HTML page.)


   -

   *Variable Setting (=)*

   Set a variable by assigning it a value using the *=* sign. Values must
   be surrounded by double quotes.

   *
   VAR = "value"
           *

   In this example, *VAR* is set to *value*.
   -

   *Early Default Value Assignment (?=)*

   A variable can be early-assigned a default value using the *?=* assignment
   operator:

   *
   A ?= "1"
   B ?= "2"
   B ?= "3"
           *

   In this example *A* will contain *1* if it was not previously set. *B* will
   contain *2* because the *?=* assignment operator is immediate meaning
   that if there are multiple *?=* assignments to a single variable, the
   first one will be used.
   -

   *Late Default Value Assignment (??=)*

   A variable can be late-assigned a default value using the *??=* assignment
   operator:

   *
   A ??= "1"
   B ??= "2"
   B ??= "3"
           *

   In this example *A* will contain *1* if it was not previously set. *B* will
   contain *3* because the *??=* assignment operator is a late or lazy
   assignment operator and assignment will not take place until the end of the
   parsing process. If there are multiple *??=* assignments to a single
   variable, the last one will be used.
   -

   *Variable Expansion*

   Bitbake supports referencing a variables content similar to shell
   scripting.

   *
   A = "jumps over"
   B = "The quick brown fox ${A} the lazy dog."
   echo $B
           *

   This results in the the text *The quick brown fox jumps over the lazy
   dog.* printed to the console.
   -

   *Immediate Variable Expansion (:=)*

   Typically, Bitbake expands a variable when it is used. The *:=* assignment
   operator however expands the variable immediately when it is assigned.

   *
   A = "11"
   B = "B:${A}"
   A = "22"
   C := "C:${A}"
   echo $C $B
           *

   This results in *C:22 B:22* printed to the console since the content of *
   A* is expanded immediately on assignment to variable *C*. Variable *B* did
   not get expanded until it was actually used in the *echo*statement.
   -

   *Appending (+=) and Prepending (=+)*

   The *+=* and *=+* append and prepend variables respectively while adding
   a single space between the values.

   *
   A = "12"
   A += "34"
   B = "89"
   B =+ "67"
           *

   This results in variable *A* containing *12 34* and variable *B*
    containing *67 89*.
   -

   *Appending (.=) and Prepending (=.) without Spaces*

   The *.=* and *=.* work like the above appending and prepending operators
   however without placing an additional space between the values.

   *
   A = "12"
   A .= "34"
   B = "89"
   B =. "67"
           *

   This results in variable *A* containing *1234* and variable *B*
    containing *6789*.

Rudi

--047d7b10cb1192072704bc68c813
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Robert,</div><div><br></div><div>I don&#39;t think that the YP manuals=
 do. That&#39;s more Bitbake. However, here is some copied out of my docs. =
(List excuse the formatting. It&#39;s copied from an HTML page.)</div><div>
<br></div><ul style=3D"font-family:&#39;Times New Roman&#39;;font-size:medi=
um"><li><p><b>Variable Setting (=3D)</b></p><p>Set a variable by assigning =
it a value using the=A0<tt><b><font size=3D"-1">=3D</font></b></tt>=A0sign.=
 Values must be surrounded by double quotes.</p>
<pre style=3D"background-color:rgb(225,225,225)"><b>
VAR =3D &quot;value&quot;
       =20
</b></pre>In this example,=A0<tt><b><font size=3D"-1">VAR</font></b></tt>=
=A0is set to=A0<tt><b><font size=3D"-1">value</font></b></tt>.</li><li><p><=
b>Early Default Value Assignment (?=3D)</b></p><p>A variable can be early-a=
ssigned a default value using the=A0<tt><b><font size=3D"-1">?=3D</font></b=
></tt>=A0assignment operator:</p>
<pre style=3D"background-color:rgb(225,225,225)"><b>
A ?=3D &quot;1&quot;
B ?=3D &quot;2&quot;
B ?=3D &quot;3&quot;
       =20
</b></pre>In this example=A0<tt><b><font size=3D"-1">A</font></b></tt>=A0wi=
ll contain=A0<tt><b><font size=3D"-1">1</font></b></tt>=A0if it was not pre=
viously set.=A0<tt><b><font size=3D"-1">B</font></b></tt>=A0will contain=A0=
<tt><b><font size=3D"-1">2</font></b></tt>=A0because the=A0<tt><b><font siz=
e=3D"-1">?=3D</font></b></tt>=A0assignment operator is immediate meaning th=
at if there are multiple=A0<tt><b><font size=3D"-1">?=3D</font></b></tt>=A0=
assignments to a single variable, the first one will be used.</li>
<li><p><b>Late Default Value Assignment (??=3D)</b></p><p>A variable can be=
 late-assigned a default value using the=A0<tt><b><font size=3D"-1">??=3D</=
font></b></tt>=A0assignment operator:</p><pre style=3D"background-color:rgb=
(225,225,225)">
<b>
A ??=3D &quot;1&quot;
B ??=3D &quot;2&quot;
B ??=3D &quot;3&quot;
       =20
</b></pre>In this example=A0<tt><b><font size=3D"-1">A</font></b></tt>=A0wi=
ll contain=A0<tt><b><font size=3D"-1">1</font></b></tt>=A0if it was not pre=
viously set.=A0<tt><b><font size=3D"-1">B</font></b></tt>=A0will contain=A0=
<tt><b><font size=3D"-1">3</font></b></tt>=A0because the=A0<tt><b><font siz=
e=3D"-1">??=3D</font></b></tt>=A0assignment operator is a late or lazy assi=
gnment operator and assignment will not take place until the end of the par=
sing process. If there are multiple=A0<tt><b><font size=3D"-1">??=3D</font>=
</b></tt>=A0assignments to a single variable, the last one will be used.</l=
i>
<li><p><b>Variable Expansion</b></p><p>Bitbake supports referencing a varia=
bles content similar to shell scripting.</p><pre style=3D"background-color:=
rgb(225,225,225)"><b>
A =3D &quot;jumps over&quot;
B =3D &quot;The quick brown fox ${A} the lazy dog.&quot;
echo $B
       =20
</b></pre>This results in the the text=A0<tt><b><font size=3D"-1">The quick=
 brown fox jumps over the lazy dog.</font></b></tt>=A0printed to the consol=
e.</li><li><p><b>Immediate Variable Expansion (:=3D)</b></p><p>Typically, B=
itbake expands a variable when it is used. The=A0<tt><b><font size=3D"-1">:=
=3D</font></b></tt>=A0assignment operator however expands the variable imme=
diately when it is assigned.</p>
<pre style=3D"background-color:rgb(225,225,225)"><b>
A =3D &quot;11&quot;
B =3D &quot;B:${A}&quot;
A =3D &quot;22&quot;
C :=3D &quot;C:${A}&quot;
echo $C $B
       =20
</b></pre>This results in=A0<tt><b><font size=3D"-1">C:22 B:22</font></b></=
tt>=A0printed to the console since the content of=A0<tt><b><font size=3D"-1=
">A</font></b></tt>=A0is expanded immediately on assignment to variable=A0<=
tt><b><font size=3D"-1">C</font></b></tt>. Variable=A0<tt><b><font size=3D"=
-1">B</font></b></tt>=A0did not get expanded until it was actually used in =
the=A0<tt><b><font size=3D"-1">echo</font></b></tt>statement.</li>
<li><p><b>Appending (+=3D) and Prepending (=3D+)</b></p><p>The=A0<tt><b><fo=
nt size=3D"-1">+=3D</font></b></tt>=A0and=A0<tt><b><font size=3D"-1">=3D+</=
font></b></tt>=A0append and prepend variables respectively while adding a s=
ingle space between the values.</p>
<pre style=3D"background-color:rgb(225,225,225)"><b>
A =3D &quot;12&quot;
A +=3D &quot;34&quot;
B =3D &quot;89&quot;
B =3D+ &quot;67&quot;
       =20
</b></pre>This results in variable=A0<tt><b><font size=3D"-1">A</font></b><=
/tt>=A0containing=A0<tt><b><font size=3D"-1">12 34</font></b></tt>=A0and va=
riable=A0<tt><b><font size=3D"-1">B</font></b></tt>=A0containing=A0<tt><b><=
font size=3D"-1">67 89</font></b></tt>.</li>
<li><p><b>Appending (.=3D) and Prepending (=3D.) without Spaces</b></p><p>T=
he=A0<tt><b><font size=3D"-1">.=3D</font></b></tt>=A0and=A0<tt><b><font siz=
e=3D"-1">=3D.</font></b></tt>=A0work like the above appending and prependin=
g operators however without placing an additional space between the values.=
</p>
<pre style=3D"background-color:rgb(225,225,225)"><b>
A =3D &quot;12&quot;
A .=3D &quot;34&quot;
B =3D &quot;89&quot;
B =3D. &quot;67&quot;
       =20
</b></pre>This results in variable=A0<tt><b><font size=3D"-1">A</font></b><=
/tt>=A0containing=A0<tt><b><font size=3D"-1">1234</font></b></tt>=A0and var=
iable=A0<tt><b><font size=3D"-1">B</font></b></tt>=A0containing=A0<tt><b><f=
ont size=3D"-1">6789</font></b></tt>.</li>
</ul>Rudi=A0

--047d7b10cb1192072704bc68c813--
