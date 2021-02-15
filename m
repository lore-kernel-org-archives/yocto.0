Subject: Timing a recipe
To: yocto@lists.yoctoproject.org
From: rustyhowell@gmail.com
X-Originating-Location: West Valley City, Utah, US (68.177.138.69)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 15 Feb 2021 12:08:37 -0800
Message-ID: <fQ55.1613419717498551221.Ltf0@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EFyw8iF5qWEnIbyxROSv"

--EFyw8iF5qWEnIbyxROSv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is there a way to automatically record build time of a recipe without modif=
ying the recipe itself?=C2=A0 I have a recipe that is a monster, it has man=
y git URIs and produces many packages that are coupled. It should be broken=
 up but company deadlines have kept us from taking the time to do this. I w=
as talking to my boss about this. He said we really needs some concrete dat=
a about how much this monster recipe is costing us before green-lighting th=
e massive effort to split up the recipe.=C2=A0 I agree with him, so I would=
 like to know how much time is spent repeatedly building this recipe.=C2=A0=
 I figure I could do this by adding do_fetch_prepend() and writing the time=
 to a file, and then do_install_append() and writing the time to the file. =
So after a week or so, I would have many start/end data points to discuss.

However, I did not want to modify the recipe itself. I was hoping to augme=
nt the recipe via local.conf. Another bbappend in a new layer would work I =
guess, but I was hoping there was something simpler. Thanks in advance.

--EFyw8iF5qWEnIbyxROSv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Is there a way to automatically record build time of a recipe without mo=
difying the recipe itself?&nbsp; I have a recipe that is a monster, it has =
many git URIs and produces many packages that are coupled. It should be bro=
ken up but company deadlines have kept us from taking the time to do this. =
I was talking to my boss about this. He said we really needs some concrete =
data about how much this monster recipe is costing us before green-lighting=
 the massive effort to split up the recipe.&nbsp; I agree with him, so I wo=
uld like to know how much time is spent repeatedly building this recipe.&nb=
sp; I figure I could do this by adding do_fetch_prepend() and writing the t=
ime to a file, and then do_install_append() and writing the time to the fil=
e. So after a week or so, I would have many start/end data points to discus=
s.&nbsp;&nbsp;</p>
<p>However, I did not want to modify the recipe itself. I was hoping to au=
gment the recipe via local.conf. Another bbappend in a new layer would work=
 I guess, but I was hoping there was something simpler. Thanks in advance.<=
/p>

--EFyw8iF5qWEnIbyxROSv--
