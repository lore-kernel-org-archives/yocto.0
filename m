Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12259E00754; Mon,  9 Mar 2015 14:21:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTTPS_HTTP_MISMATCH, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DF87E006E9
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 14:21:38 -0700 (PDT)
Received: by pdjy10 with SMTP id y10so27889923pdj.12
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 14:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Q2hStJcws3luzehLRbZ7mz0KnFSwvvLa7tJwtiBPmF0=;
	b=ZQcVVlSzH7Jj0V8C0xANgDtKRccS9OQwENw1ejJl5Psm41JtzzpOGoxF6WeKbw314r
	UDiOOTQdlUsWNlFsOijfa0fVunc3W+wWfiLZiH1bxWdbl6yulcvWP2lZwM2XT9WmnaNw
	9xUF/mEJSctvY9uaBNkfncgG2taeQIryNHgAiQWjBWzZKVnoantU9EXX5hA1qqdS2fx4
	Q27lZ6T+H0sKodF8ywRnc/1lZWihBpzmejJXPGIZAn2a/ISeVYrFj4sXZhF67sz0udZu
	1HJDUIOB0wyvo3aYeEiJ6GBXgljnfn+nK8o3Q//Eh3SG2lTQPb1p68tKShCv+jMPX6Kg
	iVGw==
X-Received: by 10.70.38.1 with SMTP id c1mr42448116pdk.102.1425936097648;
	Mon, 09 Mar 2015 14:21:37 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:489f:26b4:52a3:63c4?
	([2601:9:3580:84c:489f:26b4:52a3:63c4])
	by mx.google.com with ESMTPSA id a6sm12363505pdn.93.2015.03.09.14.21.36
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Mar 2015 14:21:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <30C2D590D16A5C46ADFE652191037798538E4633@AZ-US1EXMB03.global.avaya.com>
Date: Mon, 9 Mar 2015 14:21:36 -0700
Message-Id: <080457FD-947E-4EA3-AC88-EE8AAD4AC4FD@gmail.com>
References: <30C2D590D16A5C46ADFE652191037798538E45DA@AZ-US1EXMB03.global.avaya.com>
	<96459791-02BB-47CF-B2EA-6F43FDA359EB@gmail.com>
	<30C2D590D16A5C46ADFE652191037798538E4633@AZ-US1EXMB03.global.avaya.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Daisy 1.6.1 on CentOS 6.5
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
X-List-Received-Date: Mon, 09 Mar 2015 21:21:43 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_3DC340B4-F173-4994-894B-A0934B166DEB"

--Apple-Mail=_3DC340B4-F173-4994-894B-A0934B166DEB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 9, 2015, at 2:05 PM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
>=20
> Thanks, but that doesn=E2=80=99t quite answer my question.

well you could just download and install

=
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/buildtools/po=
ky-eglibc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-standalo=
ne-1.6.1.sh
> =20
> The link you pointed to also claims that all required dependencies are
> available on CentOS 6.
> =20
> But the package list at =
http://mirror.centos.org/centos/6/os/x86_64/Packages/ =
<http://mirror.centos.org/centos/6/os/x86_64/Packages/>
> says otherwise. As I found, the version of Python on CentOS is 2.6.6
> =20

that doc is obsolete as it says on top of the page.

> MV
> =20
> From: Khem Raj [mailto:raj.khem@gmail.com]=20
> Sent: March 09, 2015 4:47 PM
> To: Vuille, Martin (Martin)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Daisy 1.6.1 on CentOS 6.5
> =20
> =20
> On Mar 9, 2015, at 1:36 PM, Vuille, Martin (Martin) <vmartin@avaya.com =
<mailto:vmartin@avaya.com>> wrote:
> =20
> The Yocto 1.6.1 Project Reference Manual states that it is supported =
and tested
> against CentOS release 6.5, but later states that Python 2.7.3 is =
required, CentOS 6.5
> seems to have an older version of Python (2.6.6).
> =20
> The build does not, in fact, work and complains that the version of =
Python is too old.
> =20
> Is the information about supported/tested distros out of date? Is =
there an expectation
> that Python must be manually updated to the required version?
> =20
> =20
> https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies =
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctoproject.=
org_wiki_Poky_GettingStarted_Dependencies&d=3DAwMFAg&c=3DBFpWQw8bsuKpl1Sgi=
ZH64Q&r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=3DpGEntZ4M0TJOX6Ce=
-fitVUlVZrKRk41xxkEdlAgWYRQ&s=3DQeF_zbbrQ1LRBoZI_METoFL9bvnz6J6X3Dt13kSduF=
8&e=3D>
>=20
>=20
> =20
> MV
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_listinfo_yocto&d=3DAwMFAg&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=3DSbT_XjBLTrjz=
Wy1iRhblzG3bKRhcodBp7tD_mnp1dpg&m=3DpGEntZ4M0TJOX6Ce-fitVUlVZrKRk41xxkEdlA=
gWYRQ&s=3DHf8jqGTZ1zaROo9_c9DEXDBnBaQlQJKeUcUSG8VIlYk&e=3D>

--Apple-Mail=_3DC340B4-F173-4994-894B-A0934B166DEB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 9, 2015, at 2:05 PM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
class=3D"WordSection1" style=3D"page: WordSection1; font-family: =
LucidaGrande; font-size: 12px; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">Thanks, but that doesn=E2=80=99t quite =
answer my question.</span></div></div></div></blockquote><div><br =
class=3D""></div><div>well you could just download and =
install</div><div><br class=3D""></div><div><a =
href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/build=
tools/poky-eglibc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-=
standalone-1.6.1.sh" =
class=3D"">http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/bu=
ildtools/poky-eglibc-x86_64-buildtools-tarball-core2-64-buildtools-natives=
dk-standalone-1.6.1.sh</a></div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: LucidaGrande; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D""><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">The link you pointed to =
also claims that all required dependencies are<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">available on CentOS 6.<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">But the package list =
at<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://mirror.centos.org/centos/6/os/x86_64/Packages/" =
style=3D"color: purple; text-decoration: underline;" =
class=3D"">http://mirror.centos.org/centos/6/os/x86_64/Packages/</a><o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">says otherwise. As I found, the version of =
Python on CentOS is 2.6.6<o:p class=3D""></o:p></span></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif; color: rgb(31, 73, 125);" =
class=3D"">&nbsp;</span></div></div></div></blockquote><div><br =
class=3D""></div><div>that doc is obsolete as it says on top of the =
page.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"WordSection1" style=3D"page: WordSection1; =
font-family: LucidaGrande; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;"><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif; color: rgb(31, 73, 125);" class=3D"">MV<o:p =
class=3D""></o:p></span></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif; color: =
rgb(31, 73, 125);" class=3D"">&nbsp;</span></div><div =
style=3D"border-style: none none none solid; border-left-color: blue; =
border-left-width: 1.5pt; padding: 0in 0in 0in 4pt;" class=3D""><div =
class=3D""><div style=3D"border-style: solid none none; =
border-top-color: rgb(181, 196, 223); border-top-width: 1pt; padding: =
3pt 0in 0in;" class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D""><b =
class=3D""><span style=3D"font-size: 10pt; font-family: Tahoma, =
sans-serif;" class=3D"">From:</span></b><span style=3D"font-size: 10pt; =
font-family: Tahoma, sans-serif;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>Khem Raj [<a =
href=3D"mailto:raj.khem@gmail.com" =
class=3D"">mailto:raj.khem@gmail.com</a>]<span =
class=3D"Apple-converted-space">&nbsp;</span><br class=3D""><b =
class=3D"">Sent:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>March 09, 2015 4:47 PM<br =
class=3D""><b class=3D"">To:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Vuille, Martin (Martin)<br =
class=3D""><b class=3D"">Cc:</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><b =
class=3D"">Subject:</b><span =
class=3D"Apple-converted-space">&nbsp;</span>Re: [yocto] Yocto Daisy =
1.6.1 on CentOS 6.5<o:p class=3D""></o:p></span></div></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div><div =
class=3D""><blockquote style=3D"margin-top: 5pt; margin-bottom: 5pt;" =
class=3D""><div class=3D""><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 12pt; font-family: 'Times New Roman', serif;" class=3D"">On =
Mar 9, 2015, at 1:36 PM, Vuille, Martin (Martin) &lt;<a =
href=3D"mailto:vmartin@avaya.com" style=3D"color: purple; =
text-decoration: underline;" class=3D"">vmartin@avaya.com</a>&gt; =
wrote:<o:p class=3D""></o:p></div></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 12pt; font-family: 'Times New Roman', serif;" =
class=3D""><o:p class=3D"">&nbsp;</o:p></div><div class=3D""><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">The Yocto 1.6.1 Project Reference Manual states that it is =
supported and tested<o:p class=3D""></o:p></span></div></div><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">against CentOS release 6.5, but later states that Python =
2.7.3 is required, CentOS 6.5<o:p class=3D""></o:p></span></div></div><div=
 class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><span =
style=3D"font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">seems to have an older version of Python (2.6.6).<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">&nbsp;<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">The build does not, in fact, work and complains =
that the version of Python is too old.<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">&nbsp;<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">Is the information about supported/tested =
distros out of date? Is there an expectation<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">that Python must be manually updated to the =
required version?<o:p =
class=3D""></o:p></span></div></div></div></blockquote><div =
class=3D""><div style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; =
font-family: 'Times New Roman', serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><o:p class=3D"">&nbsp;</o:p></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__wiki.yoctop=
roject.org_wiki_Poky_GettingStarted_Dependencies&amp;d=3DAwMFAg&amp;c=3DBF=
pWQw8bsuKpl1SgiZH64Q&amp;r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&a=
mp;m=3DpGEntZ4M0TJOX6Ce-fitVUlVZrKRk41xxkEdlAgWYRQ&amp;s=3DQeF_zbbrQ1LRBoZ=
I_METoFL9bvnz6J6X3Dt13kSduF8&amp;e=3D" style=3D"color: purple; =
text-decoration: underline;" =
class=3D"">https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependen=
cies</a><o:p class=3D""></o:p></div></div><div class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><br class=3D""><br class=3D""><o:p =
class=3D""></o:p></div><div class=3D""><div class=3D""><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 11pt; =
font-family: Calibri, sans-serif;" class=3D"">&nbsp;<o:p =
class=3D""></o:p></span></div></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times New Roman', =
serif;" class=3D""><span style=3D"font-size: 11pt; font-family: Calibri, =
sans-serif;" class=3D"">MV<o:p class=3D""></o:p></span></div></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 12pt; font-family: 'Times =
New Roman', serif;" class=3D""><span style=3D"font-size: 9pt; =
font-family: LucidaGrande, serif;" class=3D"">--<span =
class=3D"apple-converted-space">&nbsp;</span><br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""></span><a =
href=3D"mailto:yocto@yoctoproject.org" style=3D"color: purple; =
text-decoration: underline;" class=3D""><span style=3D"font-size: 9pt; =
font-family: LucidaGrande, serif; color: purple;" =
class=3D"">yocto@yoctoproject.org</span></a><span style=3D"font-size: =
9pt; font-family: LucidaGrande, serif;" class=3D""><br =
class=3D""></span><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yocto=
project.org_listinfo_yocto&amp;d=3DAwMFAg&amp;c=3DBFpWQw8bsuKpl1SgiZH64Q&a=
mp;r=3DSbT_XjBLTrjzWy1iRhblzG3bKRhcodBp7tD_mnp1dpg&amp;m=3DpGEntZ4M0TJOX6C=
e-fitVUlVZrKRk41xxkEdlAgWYRQ&amp;s=3DHf8jqGTZ1zaROo9_c9DEXDBnBaQlQJKeUcUSG=
8VIlYk&amp;e=3D" style=3D"color: purple; text-decoration: underline;" =
class=3D""><span style=3D"font-size: 9pt; font-family: LucidaGrande, =
serif; color: purple;" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</span></a></div><=
/div></div></div></div></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_3DC340B4-F173-4994-894B-A0934B166DEB--
