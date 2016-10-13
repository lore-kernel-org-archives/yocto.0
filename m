Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BC0DE00DF2; Thu, 13 Oct 2016 07:07:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [178.22.154.200 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz300.laposte.net [178.22.154.200])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC9A8E00C18
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 07:07:50 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 456818CD83
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 16:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1476367669; bh=/7TGVhvfnFpjvaOUEUBBlkjc0QQMwVQh8C1uzsNfWXA=;
	h=To:Subject:References:Date:From:In-Reply-To;
	b=BqI5wCRj0GiZISD2hlp445ZUUjkrbHGg4UOQ/IEOFsJUPGkjTEQ0vRa/j7pZjnJKo
	wunV+MzKtfgbRDdj/bLW/pkvp2PzC12szxbxdUZrR6Y9nipeKA6EVNM/rIAUOzr3Qc
	mGX4gQR1Rgi8THoL0PMzp0Suctn56zL8CMG7tKIoUoK0WSnA1H1+q7eokatpQBimXa
	BYzOtMKu3ORLC+Lvc5o/g4pRj+IX5EZfvIWScxsR6ECXuuIumxmP2b7WVYeI1+R+rq
	kan1Q19FbpPQiC8kMrmg1TGs2emop7d5SbFiBQjDjGPzzoe36FDMWlOlRV3xilQsLr
	9BNmiTgULFmGQ==
Received: from lpn-prd-vrin001 (lpn-prd-vrin001.laposte [10.128.63.2])
	by lpn-prd-vrout012 (Postfix) with ESMTP id 40D598CCDA
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 16:07:49 +0200 (CEST)
Received: from lpn-prd-vrin001 (localhost [127.0.0.1])
	by lpn-prd-vrin001 (Postfix) with ESMTP id 25756366CCC
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 16:07:49 +0200 (CEST)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin001 (Postfix) with ESMTPA id D070B366CAF;
	Thu, 13 Oct 2016 16:07:48 +0200 (CEST)
To: "Yocto list discussion" <yocto@yoctoproject.org>, "Michel D'HOOGE"
	<michel.dhooge@free.fr>
References: <1646208426.125108529.1476353244671.JavaMail.root@spooler3-g27.priv.proxad.net>
Date: Thu, 13 Oct 2016 16:07:48 +0200
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yo9yvamsmnlnty@pc-mls.ecafaros.local>
In-Reply-To: <1646208426.125108529.1476353244671.JavaMail.root@spooler3-g27.priv.proxad.net>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: -100
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrgeeggdejgecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhs
X-VR-Cause-3: ucdlqddutddtmdenucfjughrpegtvffufhffggfhkfgjfgesrgdtreertderleenucfhrhhomhepihgu
X-VR-Cause-4: vggrlhhsihhmuceoihguvggrlhhsihhmsehlrghpohhsthgvrdhnvghtqeenucffohhmrghinhepohhp
X-VR-Cause-5: vghrrgdrtghomhenucfkphepvdduvddrvdefgedrfeeirddufeehnecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-6: mhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvghtpedv
X-VR-Cause-7: uddvrddvfeegrdefiedrudefhedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdr
X-VR-Cause-8: nhgvthdprhgtphhtthhopehmihgthhgvlhdrughhohhoghgvsehfrhgvvgdrfhhr
X-VR-AvState: No
X-VR-State: 0
Subject: Re: add dejavu-fonts to image
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
X-List-Received-Date: Thu, 13 Oct 2016 14:07:57 -0000
Content-Type: multipart/alternative; boundary=----------AQcANRgsjHkgJKGxWHWrcR

------------AQcANRgsjHkgJKGxWHWrcR
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Hello, thanks a lot the build work now !
But i have another issue, i would like to install the font in  =

/usr/lib/fonts, this is not the case for the moment (it 's for Qt5.7 use=
).  =

How i can said to yocto to install font (.ttf) on this folder please ?

regards

Micka=EBl

Le Thu, 13 Oct 2016 12:07:24 +0200, Michel D'HOOGE <michel.dhooge@free.f=
r>  =

a =E9crit:

> Hello,
>
> In fact, the ttf-dejavu recipe doesn't provide a package with the same=
  =

> name. If you look at the PACKAGES variable, you'll find that it  =

> >provides ${PN}-sans, ${PN}-sans-mono, ${PN}-sans-condensed, ${PN}-ser=
if  =

> , ${PN}-serif-condensed & ${PN}-mathtexgyre.
>
>> So you have to explicitly choose the packages you want.
>
>> Michel



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------AQcANRgsjHkgJKGxWHWrcR
Content-Type: multipart/related; boundary=----------AQcANRgsjHkgJK4btlyl4m

------------AQcANRgsjHkgJK4btlyl4m
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1476367668671.8f329e665d6a71a3@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head><style type=3D"text/css">p { margin: 0; }</st=
yle>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>Hello, thanks a lot the build work now !</div><div>But i have=
 another issue, i would like to install the font in /usr/lib/fonts, this=
 is not the case for the moment (it 's for Qt5.7 use). How i can said to=
 yocto to install font (.ttf) on this folder please ?</div><div><br></di=
v><div>regards</div><div><br></div><div>Micka=EBl</div><div><br></div><d=
iv>Le Thu, 13 Oct 2016 12:07:24 +0200, Michel D'HOOGE &lt;michel.dhooge@=
free.fr&gt; a =E9crit:<br></div><br><blockquote style=3D"margin: 0 0 0.8=
0ex; border-left: #0000FF 2px solid; padding-left: 1ex"><div style=3D"fo=
nt-family: times new roman,new york,times,serif; font-size: 12pt; color:=
 #000000"><font face=3D"times new roman, new york, times, serif"><span s=
tyle=3D"font-size: 12pt;">Hello,</span></font><div style=3D"color: rgb(0=
, 0, 0); font-family: &quot;times new roman&quot;, &quot;new york&quot;,=
 times, serif; font-size: 12pt;"><br></div><div><font face=3D"times new =
roman, new york, times, serif"><span style=3D"font-size: 12pt;">In fact,=
 the ttf-dejavu recipe doesn't provide a package with the same name. If =
you look at the PACKAGES variable, you'll find that it provides&nbsp;</s=
pan><span style=3D"font-size: 16px;">${PN}-sans,&nbsp;</span></font><spa=
n style=3D"font-size: 16px; font-family: &quot;times new roman&quot;, &q=
uot;new york&quot;, times, serif;">${PN}-sans-mono,&nbsp;</span><span st=
yle=3D"font-size: 16px; font-family: &quot;times new roman&quot;, &quot;=
new york&quot;, times, serif;">${PN}-sans-condensed,&nbsp;</span><span s=
tyle=3D"font-size: 16px; font-family: &quot;times new roman&quot;, &quot=
;new york&quot;, times, serif;">${PN}-serif ,&nbsp;</span><span style=3D=
"font-size: 16px; font-family: &quot;times new roman&quot;, &quot;new yo=
rk&quot;, times, serif;">${PN}-serif-condensed &amp;&nbsp;</span><span s=
tyle=3D"font-size: 16px; font-family: &quot;times new roman&quot;, &quot=
;new york&quot;, times, serif;">${PN}-mathtexgyre.</span></div><div><fon=
t face=3D"times new roman, new york, times, serif"><span style=3D"font-s=
ize: 16px;"><br></span></font></div><div><font face=3D"times new roman, =
new york, times, serif"><span style=3D"font-size: 16px;">So you have to&=
nbsp;explicitly&nbsp;choose the packages you want.</span></font></div><d=
iv><font face=3D"times new roman, new york, times, serif"><span style=3D=
"font-size: 16px;"><br></span></font></div><div><font face=3D"times new =
roman, new york, times, serif"><span style=3D"font-size: 16px;">Michel</=
span></font><br></div></div></blockquote><br><br><br><div id=3D"M2Signat=
ure"><div>-- </div><div>Utilisant le logiciel de courrier d'Opera : <a h=
ref=3D"http://www.opera.com/mail/">http://www.opera.com/mail/</a></div><=
/div></body></html>

------------AQcANRgsjHkgJK4btlyl4m--

------------AQcANRgsjHkgJKGxWHWrcR--
