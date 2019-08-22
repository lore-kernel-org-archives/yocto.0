Return-Path: <j.behnke@schmidttechnology.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4D17E00D6A; Thu, 22 Aug 2019 08:23:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from mail.schmidttechnology.de (mail.schmidttechnology.de
	[212.185.41.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EDCAE00D38
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 08:23:19 -0700 (PDT)
X-GFI-TNEF2MIME: 1.2
Received: from ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994])
	by ST04.sft.schmidt-feintechnik.de ([fe80::2989:544f:bde7:d994%10])
	with mapi id 14.03.0468.000; Thu, 22 Aug 2019 17:23:18 +0200
From: "Behnke, Jochen" <j.behnke@schmidttechnology.de>
To: 'Randy MacLeod' <randy.macleod@windriver.com>, "yocto Mailingliste
	(yocto@yoctoproject.org)" <yocto@yoctoproject.org>
Thread-Topic: [yocto] wic create - bad ownership of directories inside image
Thread-Index: AdVQ7HKa1+aWnPsGSzybgn4086sMuQCEZiQAAX7cr+A=
Date: Thu, 22 Aug 2019 17:23:16 +0200
Message-ID: <55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de>
References: <55F1D5644E5E5A4493FCBE6156D13CD6AD921671@ST04.sft.schmidt-feintechnik.de>
	<05840950-f052-714b-0aac-aa598f209a4c@windriver.com>
In-Reply-To: <05840950-f052-714b-0aac-aa598f209a4c@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: <55F1D5644E5E5A4493FCBE6156D13CD6AD94AA0D@ST04.sft.schmidt-feintechnik.de>
MIME-Version: 1.0
X-Originating-IP: [192.168.41.234]
Disclaimer: SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000
Subject: Re: wic create - bad ownership of directories inside image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Aug 2019 15:23:23 -0000
Content-Language: de-DE
Content-Type: multipart/mixed;
	boundary="part__B1F15D94_25DD_430E_A83B_D8EF2BB27"

--part__B1F15D94_25DD_430E_A83B_D8EF2BB27
Content-Type: multipart/alternative;
	boundary="part__BF07B0DA_157A_41E0_820F_701BFA922"

--part__BF07B0DA_157A_41E0_820F_701BFA922
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Disclaimer: SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000

Hello Randy,

thanks for your reponse and sorry for my late reaction.

In order to test, if the problem can be reproduced reliably, I performed a c=
lean rebuild as follows

$ source oe-init-build-env build-tca5-32
$ rm -rf tmp
$ rm -rf sstate-cache
$ bitbake core-image-minimal
$ wic create mkefidisk -e core-image-minmal

I then mounted the resulting image file "mkefidisk-201908221701-sda.direct" =
using a loopback device (losetup)
Inside the Image all directories have UID/GID 1000/1000, which corresponds t=
o my host user.
Files however have UID/GID 0/0.

So the answer to your question is "yes I can reproduce the behavior".

One sidenote
- I am using an appended core-image-minimal not the default
- In my other image I am using qt5 (v5.12)



Regards
Jochen

On 8/12/19 5:11 AM, Behnke, Jochen wrote:
> Hello,
> 
> I am using poky 2.6.1 (thud) and create images using the wic utility.
> 
> Recently I noticed that all directories contained in the created image 
> are owned by UID 1000 and not by root. The files inside the image 
> however are owned by root.
> 
> The UID 1000 refers to my unprivileged user on the host system.
> 
> Here is the command I use to create the image
> 
> "wic create mkefidisk -e core-image-minimal"
> 
> The images created by bitbake directly (.tar.bz2, .hddimg) are correct 
> so this seems to be a wic related problem.
> 
> Does anybody have a solution for this?

Hi Jochen,

No and I've never seen this particular extreme symptom.

There is a known, generally rare bug:
    Bug 12434 - pseudo: Incorrect UID/GID in packaged files
    https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12434
but that usually shows up when building.

You could check you build logs for the generic stings from:

    glibc-locale-2.26: glibc-locale:
    /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_MEASUREMENT
    is owned by uid 3004, which is the same as the user running bitbake.
    This may be due to host contamination [host-user-contaminated]


Is your issue 100% reproducible?

../Randy


> 
> Many thanks in advance, any hint is appreciated.
> 
> Regards
> 
> Jochen
> 
> <gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> 
> 
> __________________________________
> *SCHMIDT Technology GmbH*
> Feldbergstrasse 1
> 78112 St. Georgen/Germany
> Telefon +49 (0) 77 24 / 89 90
> Fax +49 (0) 77 24 / 89 91 01
> info@schmidttechnology.de <mailto:info@schmidttechnology.de>
> http://www.schmidttechnology.de
> 
> USt-Id Nr. DE 811725105 . Registergericht Freiburg HRB 600 755
> Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt
> 
> <gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0000>
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux


__________________________________=0ASCHMIDT Technology GmbH=0AFeldbergstras=
se 1=0A78112 St. Georgen/Germany=0ATelefon +49 (0) 77 24 / 89 90=0AFax +49 (=
0) 77 24 / 89 91 01=0Ainfo@schmidttechnology.de=0Ahttp://www.schmidttechnolo=
gy.de=0A=0AUSt-Id Nr. DE 811725105 =B7 Registergericht Freiburg HRB 600 755=0A=
Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt=0A=0A


--part__BF07B0DA_157A_41E0_820F_701BFA922
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Disclaimer: SID=010500000000000515000000993c4a7a4675257c8b2de024250d0000

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">=

<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: =
#800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12pt;"><a=
 name=3D"BM_BEGIN"></a>
<div><font size=3D"2"><span style=3D"font-size:10pt;">Hello Randy,<br>

<br>

thanks for your reponse and sorry for my late reaction.<br>

<br>

In order to test, if the problem can be reproduced reliably, I performed a c=
lean rebuild as follows<br>

<br>

$ source oe-init-build-env build-tca5-32<br>

$ rm -rf tmp<br>

$ rm -rf sstate-cache<br>

$ bitbake core-image-minimal<br>

$ wic create mkefidisk -e core-image-minmal<br>

<br>

I then mounted the resulting image file &quot;mkefidisk-201908221701-sda.dir=
ect&quot; using a loopback device (losetup)<br>

Inside the Image all directories have UID/GID 1000/1000, which corresponds t=
o my host user.<br>

Files however have UID/GID 0/0.<br>

<br>

So the answer to your question is &quot;yes I can reproduce the behavior&quo=
t;.<br>

<br>

One sidenote<br>

- I am using an appended core-image-minimal not the default<br>

- In my other image I am using qt5 (v5.12)<br>

<br>

<br>

<br>

Regards<br>

Jochen<br>

<br>

On 8/12/19 5:11 AM, Behnke, Jochen wrote:<br>

&gt; Hello,<br>

&gt; <br>

&gt; I am using poky 2.6.1 (thud) and create images using the wic utility.<b=
r>

&gt; <br>

&gt; Recently I noticed that all directories contained in the created image =
<br>

&gt; are owned by UID 1000 and not by root. The files inside the image <br>

&gt; however are owned by root.<br>

&gt; <br>

&gt; The UID 1000 refers to my unprivileged user on the host system.<br>

&gt; <br>

&gt; Here is the command I use to create the image<br>

&gt; <br>

&gt; &#8220;wic create mkefidisk &#8211;e core-image-minimal&#8221;<br>

&gt; <br>

&gt; The images created by bitbake directly (.tar.bz2, .hddimg) are correct =
<br>

&gt; so this seems to be a wic related problem.<br>

&gt; <br>

&gt; Does anybody have a solution for this?<br>

<br>

Hi Jochen,<br>

<br>

No and I've never seen this particular extreme symptom.<br>

<br>

There is a known, generally rare bug:<br>

&nbsp;&nbsp;&nbsp; Bug 12434 - pseudo: Incorrect UID/GID in packaged files<b=
r>

&nbsp;&nbsp;&nbsp; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi=
?id=3D12434">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12434</a><b=
r>

but that usually shows up when building.<br>

<br>

You could check you build logs for the generic stings from:<br>

<br>

&nbsp;&nbsp;&nbsp; glibc-locale-2.26: glibc-locale:<br>

&nbsp;&nbsp;&nbsp; /glibc-binary-localedata-en-gb/usr/lib/locale/en_GB/LC_ME=
ASUREMENT<br>

&nbsp;&nbsp;&nbsp; is owned by uid 3004, which is the same as the user runni=
ng bitbake.<br>

&nbsp;&nbsp;&nbsp; This may be due to host contamination [host-user-contamin=
ated]<br>

<br>

<br>

Is your issue 100% reproducible?<br>

<br>

../Randy<br>

<br>

<br>

&gt; <br>

&gt; Many thanks in advance, any hint is appreciated.<br>

&gt; <br>

&gt; Regards<br>

&gt; <br>

&gt; Jochen<br>

&gt; <br>

&gt; &lt;gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0=
000&gt;<br>

&gt; <br>

&gt; <br>

&gt; __________________________________<br>

&gt; *SCHMIDT Technology GmbH*<br>

&gt; Feldbergstrasse 1<br>

&gt; 78112 St. Georgen/Germany<br>

&gt; Telefon &#43;49 (0) 77 24 / 89 90<br>

&gt; Fax &#43;49 (0) 77 24 / 89 91 01<br>

&gt; info@schmidttechnology.de &lt;<a href=3D"mailto:info@schmidttechnology.=
de">mailto:info@schmidttechnology.de</a>&gt;<br>

&gt; <a href=3D"http://www.schmidttechnology.de">http://www.schmidttechnolog=
y.de</a><br>

&gt; <br>

&gt; USt-Id Nr. DE 811725105 &middot; Registergericht Freiburg HRB 600 755<b=
r>

&gt; Geschaeftsfuehrung: Oliver Schmidt, Stephan Schmidt<br>

&gt; <br>

&gt; &lt;gfidisc.SID=3D010500000000000515000000993c4a7a4675257c8b2de024250d0=
000&gt;<br>

&gt; <br>

&gt; <br>

&gt; <br>

<br>

<br>

-- <br>

# Randy MacLeod<br>

# Wind River Linux<br>

</span></font></div>
</span></font>
</body>
</html>

--part__BF07B0DA_157A_41E0_820F_701BFA922--

--part__B1F15D94_25DD_430E_A83B_D8EF2BB27--
