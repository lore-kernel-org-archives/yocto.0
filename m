Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88411E00833; Sat,  2 Apr 2016 19:58:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f179.google.com (mail-ob0-f179.google.com
	[209.85.214.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04F68E0078E
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 19:58:04 -0700 (PDT)
Received: by mail-ob0-f179.google.com with SMTP id j9so28516680obd.3
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 19:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=WWT9WFv1CxnXR0fYNf9NCHqpOQD8y7J5D76mWKYaP0Q=;
	b=mjoO/LR8kPRbwcVhiPRbRJLafAbhcnUMEe5jNVAKqlHULRG7DDp2PvlH8DzjPMvNCC
	QO4RwkantQLH2K3c8eCes85X564aX+TjK9eipwpa3Ca5ykTliCoNw/e6Ft7hUep8mR8X
	Zr/rV3IjV4hOUmdXsJSYHsrMRWGkzV4ep31lAIbga5qJIA5EhCkklDUqKZJnIM7oS8B6
	WP3Igx1/QNw7d0hWhM2fbV3X31KbAwqa9pC1AHcRPE1wHgpLKfOey+SPylwV22sLFWhZ
	7y0Iz+5BNOdMybrQEoBNupcbtrmKEpH2ymVC5qU8SGDGbYWKTI55wpaUYxCFKFGDQAIY
	3KYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=WWT9WFv1CxnXR0fYNf9NCHqpOQD8y7J5D76mWKYaP0Q=;
	b=PuGMvXkjPyDNrhNhssxzDXTIghh3yfXAK+are8bx22ef60Qnjsh8GezzAEm37l4D7A
	Ofa9v9ByxlTF/Uy7XoaHWZPzoKSq5Lq4MZ5xPLq437Qlf7ZDdmJ0dFy4Km+HV47o6nOL
	lbjn08ezxeIK8iAG9kLtD9+haEvi4XtdQIbc9lGqwh1yNJnJskZIw/ABsImHq5/3OA6Y
	brub01XAFP9MnC1VPD5JaZDotnH0pea9CD35DVQeVaTJj75e9i+mWnx8GIGU88wWiU8/
	XkluN6mqGoyDNtCzgbyLWfKq7XRYIS0a7M8qD36gUHNFb6SWbaE3KfSFkIW1BvEyQCUd
	VpDg==
X-Gm-Message-State: AD7BkJLzNnyGnuM6bY4stbPXNcJJ+FPUzl2bjM68KATPwTqwFl+K0eBcNo1b1ZC5k/oTpXg8MfFja3kURhhV3g==
MIME-Version: 1.0
X-Received: by 10.60.145.236 with SMTP id sx12mr8355726oeb.45.1459652283846;
	Sat, 02 Apr 2016 19:58:03 -0700 (PDT)
Received: by 10.157.35.115 with HTTP; Sat, 2 Apr 2016 19:58:03 -0700 (PDT)
Received: by 10.157.35.115 with HTTP; Sat, 2 Apr 2016 19:58:03 -0700 (PDT)
In-Reply-To: <1459456041513.82091@edt.com>
References: <1459456041513.82091@edt.com>
Date: Sat, 2 Apr 2016 19:58:03 -0700
Message-ID: <CAEKp-aYhRi1qy9GN=UVLG669ZMpzXh9tRjZhBoTgTdBO33rzOg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Haleigh Novak <haleigh@edt.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Adding Demo Utilities to /proc
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
X-List-Received-Date: Sun, 03 Apr 2016 02:58:06 -0000
Content-Type: multipart/alternative; boundary=047d7b5d54a4dfd837052f8bc771

--047d7b5d54a4dfd837052f8bc771
Content-Type: text/plain; charset=UTF-8

Hi Haleigh,

This is your clue

>/bin/sh: lzop: command not found

You need to install it on your dev box, e.g. for Ubuntu

sudo apt-get install lzop

Cheers,
Rudi

Hello All,


Firstly I would like to say that I am new here and fairly new to Yocto, so
I do apologize if this is the wrong board for this question. (And if it is
could someone direct me to the correct board?) Background on me: graduated
OSU before Fall 2015 started with a BA Computer Science Computer Systems
- minimal yocto ~2 months baby level stuff.


Some background on the issue: I am following these directions
http://www.crashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-files-your-modules-part-1
to create a jiffies utility  folder in /proc as a precursor to a larger
project. I have made the appropriate changes within the
/usr/src/kernel/fs/proc folder and now I am trying to compile and load the
module, to place a jiffies entry in /proc. Well when I run 'make' from
/usr/src/kernel/ I get most of the way through, way past building my
jiffies.o file in user/src/kernel/fs/proc, without errors but toward the
end I get the following error.


LZO     arch/arm/boot/compressed/piggy.lzo
/bin/sh: lzop: command not found
/usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe for target
'arch/arm/boot/compressed/piggy.lzo' failed
make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1
/usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target
'arch/arm/boot/compressed/vmlinux' failed
make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2
/usr/src/kernel/arch/arm/Makefile:305: recipe for target 'zImage' failed
make: *** [zImage] Error 2

I had not though to try to 'make' in this manner before I attempted this
project so I don't know if this worked originally. My yocto build is
located on one host machine and the actual implementation / working area is
on another with an arm processor. I ssh into my device that the yocto build
is for and from there I work with the code. If I try to 'make' on the host
machine I get an error that it can not find/access some generated files so
 hat option I think is out and googling only resulted in that type of
solution one to be done on my host machine.

Has anyone ever had this problem before or could point me in a better
direction?

Thank you.

H

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--047d7b5d54a4dfd837052f8bc771
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Haleigh,</p>
<p dir=3D"ltr">This is your clue</p>
<p dir=3D"ltr">&gt;/bin/sh: lzop: command not found</p>
<p dir=3D"ltr">You need to install it on your dev box, e.g. for Ubuntu</p>
<p dir=3D"ltr">sudo apt-get install lzop</p>
<p dir=3D"ltr">Cheers, <br>
Rudi</p>
<div class=3D"gmail_quot&lt;blockquote class=3D" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hello All,=C2=A0<br>
</p>
<p><br>
</p>
<p>Firstly I would like to say that I am new=C2=A0here and fairly new to Yo=
cto, so I do apologize if this is the wrong board for this question. (And i=
f it is could someone direct me to the correct board?) Background on me: gr=
aduated OSU before=C2=A0Fall 2015 started=C2=A0with
 a BA Computer Science Computer Systems -=C2=A0minimal yocto ~2 months baby=
 level stuff.<br>
</p>
<p><br>
</p>
<p>Some background on the issue: I am following these directions=C2=A0<a hr=
ef=3D"http://www.crashcourse.ca/introduction-linux-kernel-programming/lesso=
n-11-adding-proc-files-your-modules-part-1" target=3D"_blank">http://www.cr=
ashcourse.ca/introduction-linux-kernel-programming/lesson-11-adding-proc-fi=
les-your-modules-part-1</a>
 to create a jiffies utility=C2=A0 folder in /proc as a precursor to a larg=
er project. I have made the appropriate changes within the /usr/src/kernel/=
fs/proc folder and now I am trying to compile and load the module, to place=
 a jiffies entry in /proc. Well when
 I run &#39;make&#39; from /usr/src/kernel/ I get most of the way through, =
way=C2=A0past building my jiffies.o file in user/src/kernel/fs/proc,=C2=A0w=
ithout errors but toward the end I get the following error.<br>
</p>
<p><br>
</p>
<div>LZO =C2=A0 =C2=A0 arch/arm/boot/compressed/piggy.lzo</div>
<div>/bin/sh: lzop: command not found</div>
<div>/usr/src/kernel/arch/arm/boot/compressed/Makefile:193: recipe for targ=
et &#39;arch/arm/boot/compressed/piggy.lzo&#39; failed</div>
<div>make[2]: *** [arch/arm/boot/compressed/piggy.lzo] Error 1</div>
<div>/usr/src/kernel/arch/arm/boot/Makefile:52: recipe for target &#39;arch=
/arm/boot/compressed/vmlinux&#39; failed</div>
<div>make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2</div>
<div>/usr/src/kernel/arch/arm/Makefile:305: recipe for target &#39;zImage&#=
39; failed</div>
<div>make: *** [zImage] Error 2</div>
<div>=C2=A0<br>
</div>
<div>I had not though to try to &#39;make&#39; in this manner before I atte=
mpted this project so I don&#39;t know if this worked originally.=C2=A0My y=
octo build is located on one host=C2=A0machine and the actual implementatio=
n / working area is on=C2=A0another with an arm processor.
 I ssh into my device that the yocto=C2=A0build is for and from there I=C2=
=A0work with the code.=C2=A0If I try to &#39;make&#39; on the host machine =
I get an error that it can not find/access=C2=A0some generated files so =C2=
=A0hat option I think is out and googling only resulted in that type
 of solution one to be done on my host machine.=C2=A0=C2=A0<br>
</div>
<div><br>
</div>
<div>Has anyone ever had this problem before or could point me in a better =
direction?<br>
</div>
<div><br>
</div>
<div>Thank you.<br>
</div>
<div><br>
</div>
<div>H<br>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></div>

--047d7b5d54a4dfd837052f8bc771--
