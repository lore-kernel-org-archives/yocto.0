Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F9F0E006E7; Sat,  2 Aug 2014 12:46:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25D06E004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 12:45:58 -0700 (PDT)
Received: by mail-ig0-f176.google.com with SMTP id hn18so3306226igb.9
	for <yocto@yoctoproject.org>; Sat, 02 Aug 2014 12:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=H/xERFj0zUlP2JYdcCxR6EZACtcJOiGaXrnw0s2Gxxk=;
	b=KHJccX2SpgF/CsWwA+ykkE8I3gXN2dwsWdHSwmBxhWQItDJ5koz2GUghVCy0Hntpo8
	hkgV6GEN26LesLD4Ozme4b8fDH3cDH+V2sxGY4JtIk1hiZf2BdDnS03kTMXjTBpIubZH
	WTTP+ZB2Oiy32ofMY1jV6wvHijpIVrFRKW4WTPP1WQipTitBH9LAqFV9E8X3lj/7Hmpq
	QC7szx0qBCNjkFaLVvA2SvByFaIGLxwOueJieu3FErOmoi0LpNagG3QJGVrsbh9N6rGm
	/6dZuqFa9p1OisW0XKYHfP2moDplWs0jDNsLdZ/e1IJk0lJb/Cq5ED8eckv4NT+GUkcK
	M4mA==
X-Received: by 10.42.82.6 with SMTP id b6mr17716104icl.51.1407008758041; Sat,
	02 Aug 2014 12:45:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Sat, 2 Aug 2014 12:45:27 -0700 (PDT)
In-Reply-To: <CAHURY+2SYoAs+i-WK-_vcxghqgXP=jVNgsFJJ+-rLHFQ8HjpKg@mail.gmail.com>
References: <CAHURY+2SYoAs+i-WK-_vcxghqgXP=jVNgsFJJ+-rLHFQ8HjpKg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Aug 2014 12:45:27 -0700
Message-ID: <CAMKF1sqp=JGHvhmrFDk7JGzpwDJFpdbuJxSnJt8NoN-pixF7Kg@mail.gmail.com>
To: Nilesh Kokane <nilesh.kokane@mindastoneridge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Function failed: do_rootfs -Qt5 using yocto on Wandboard -Error
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
X-List-Received-Date: Sat, 02 Aug 2014 19:46:01 -0000
Content-Type: multipart/alternative; boundary=485b397dd70138117e04ffaac198

--485b397dd70138117e04ffaac198
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 2, 2014 at 6:28 AM, Nilesh Kokane <
nilesh.kokane@mindastoneridge.com> wrote:

> Hello,
>
>
>
> Based on the instructions
> http://wiki.wandboard.org/index.php/Building_Qt5_using_yocto_on_Wandboard=
.
>
>
> i gave a bitbake core-image-minimal following which it failed at the last
> stage with the logs posted on http://pastebin.com/QFu2Rw6G
>
>
> DISTRO_FEATURES_remove =3D "x11 wayland"  is present in the local config.
>
>
=E2=80=8B



>
>
> why its failing  with Unable to install packages errors.
>
>
>
> Can any one suggest
>
>
>
=E2=80=8Bit seems that imx-test depends on libxrender which is a X11 featur=
e so
either remove imx-test package too when you remove X11 from features =E2=80=
=8Bor
keep X11 in features.

--485b397dd70138117e04ffaac198
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmai=
l_quote">On Sat, Aug 2, 2014 at 6:28 AM, Nilesh Kokane <span dir=3D"ltr">&l=
t;<a href=3D"mailto:nilesh.kokane@mindastoneridge.com" target=3D"_blank">ni=
lesh.kokane@mindastoneridge.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><div>Hello,<br></div><div><br><br><br>Bas=
ed on the instructions <a href=3D"http://wiki.wandboard.org/index.php/Build=
ing_Qt5_using_yocto_on_Wandboard" target=3D"_blank">http://wiki.wandboard.o=
rg/index.php/Building_Qt5_using_yocto_on_Wandboard</a>.<br>



<br><br></div>i gave a bitbake core-image-minimal following which it failed=
 at the last stage with the logs posted on <a href=3D"http://pastebin.com/Q=
Fu2Rw6G" target=3D"_blank">http://pastebin.com/QFu2Rw6G</a><br><br><span st=
yle=3D"font-family:&#39;arial black&#39;,sans-serif"><font size=3D"1"><br>


</font></span><pre><span style=3D"font-family:&#39;arial black&#39;,sans-se=
rif"><font><font>DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;  is pre=
sent in the local config.<br><br></font></font></span></pre></div></blockqu=
ote>

<div><br></div><div><span style=3D"color:rgb(255,0,0);font-family:Consolas,=
Menlo,Monaco,&#39;Lucida Console&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu=
 Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,monospace,serif;font-siz=
e:12px;line-height:21px"><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif;display:inline">

=E2=80=8B</div></span></div><div><span style=3D"color:rgb(255,0,0);font-fam=
ily:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;,&#39;Liberation Mono&#39=
;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera Sans Mono&#39;,monospace,s=
erif;font-size:12px;line-height:21px"><br>

</span></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><pre><span =
style=3D"font-family:&#39;arial black&#39;,sans-serif"><font><font><br>

<br></font></font></span></pre><pre><span style=3D"font-family:&#39;arial b=
lack&#39;,sans-serif"><font><font>why its failing  with Unable to install p=
ackages errors.<br>

<br><br></font></font></span></pre><pre><span style=3D"font-family:&#39;ari=
al black&#39;,sans-serif"><font><font>Can any one suggest</font></font></sp=
an><span><font color=3D"#888888"><br></font></span></pre><div><div>
<img src=3D"https://ssl.gstatic.com/ui/v1/icons/mail/images/cleardot.gif"><=
/div></div>
</div>

<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif;display:inline">=E2=80=8Bit seems that imx-t=
est depends on libxrender which is a X11 feature so either remove imx-test =
package too when you remove X11 from features =E2=80=8Bor keep X11 in featu=
res.</div>

</div></div><br></div></div>

--485b397dd70138117e04ffaac198--
