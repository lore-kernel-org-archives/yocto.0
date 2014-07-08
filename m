Return-Path: <ellurubharath29@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4BBBE00559; Tue,  8 Jul 2014 16:37:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ellurubharath29[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47073E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 16:37:10 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id t60so6708201wes.18
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 16:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Oq6FxgiobCA17v4Qs6AFH38KUAVmj2YCnN/SQ9RfgnU=;
	b=gdL9/ZqUvKCp5qA9Wg6PJpyQXkwBbDCkyxj1rlsYZGGUM9PB0Nm1UGWifvMUKxr7LF
	Kl981kf4RtIVmpDsceL6oShyj0xzJErd3lQTTB1rbi99n8UXilfIfOQ0ilYMF9yr89ZU
	dBddSGlsKovd6KmmWxvTdedkn2HFYBy2MRMUVrqyhSS4yqTseu3QHaNUTSEtXs9ArpCS
	gCb7MW9eK5QuxyxzpLbnIdUkMjJP4kJj27EebIKz9EK8LR0s+9T47Bzp1jmKd9+OGYUG
	Bx9kb2RfDnkjiIhefxzhV3XYHzV9u00iMeIiZ982lDAeDJ0qewWQ5/H2wgAm9W96F6p8
	mYgw==
MIME-Version: 1.0
X-Received: by 10.194.23.135 with SMTP id m7mr43947225wjf.2.1404862629390;
	Tue, 08 Jul 2014 16:37:09 -0700 (PDT)
Received: by 10.194.78.46 with HTTP; Tue, 8 Jul 2014 16:37:09 -0700 (PDT)
In-Reply-To: <CA+gsK-pcPST5iGiVmfVQt+CPMeKfkci_P3Zn2J-onFNj7CNGCg@mail.gmail.com>
References: <CAGM0ZdTnjLQXoh6aFeURUv1N_7-gga7wLgPg-JMjaB2-jgVWRQ@mail.gmail.com>
	<CA+gsK-pcPST5iGiVmfVQt+CPMeKfkci_P3Zn2J-onFNj7CNGCg@mail.gmail.com>
Date: Tue, 8 Jul 2014 18:37:09 -0500
Message-ID: <CAGM0ZdSqzU4t1=mtefVEcyo2XGY_jyDZEp+BHKkd1q+NS8Vn-w@mail.gmail.com>
From: Bharath Chandra <ellurubharath29@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL
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
X-List-Received-Date: Tue, 08 Jul 2014 23:37:14 -0000
Content-Type: multipart/alternative; boundary=047d7b5d5ffefbaeac04fdb711ac

--047d7b5d5ffefbaeac04fdb711ac
Content-Type: text/plain; charset=UTF-8

Hi Rudolf,

I need to include only coreutils package in my image. I have written a
recipe file as follows
My recipe file is as follows:

DESCRIPTION = "A test image for Gumstix boards."
LICENSE = "CLOSED"

IMAGE_INSTALL += " \
          coreutils \
"

Thanks,
Bharath.




On Tue, Jul 8, 2014 at 5:42 PM, Rudolf Streif <rstreif@linuxfoundation.org>
wrote:

> Hi Bharath,
>
> IMAGE_INSTALL += " \
>
>>         coreutils \
>> "
>>
>
> You may want to post your entire recipe.
>
>
>> in my image file. But, I do not see any coreutils package in tmp folder.
>> Let me know if my understanding is wrong.
>>
>>
> It should be in tmp/work/i586-poky-linux/coreutils/ if you are building
> for x86.
>
> Did you check your image too?
>
>
> Best regards,
> Rudi
>



-- 
Thanks & Regards,
Bharath Chandra Elluru.
Contact Number:785-979-4875.

--047d7b5d5ffefbaeac04fdb711ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rudolf,<div><br></div><div>I need to include only coreu=
tils package in my image. I have written a recipe file as follows</div><div=
>My recipe file is as follows:</div><div><br></div><div><table class=3D"" s=
tyle=3D"border-width:0px 1px 1px;border-right-style:solid;border-bottom-sty=
le:solid;border-left-style:solid;border-right-color:rgb(221,221,221);border=
-bottom-color:rgb(221,221,221);border-left-color:rgb(221,221,221);border-sp=
acing:0px;border-collapse:collapse;empty-cells:show;font-size:12px;line-hei=
ght:15.600000381469727px;padding:0px;margin:0px auto;table-layout:fixed;wid=
th:1330px;color:rgb(0,0,0);font-family:Verdana,Arial,&#39;Bitstream Vera Sa=
ns&#39;,Helvetica,sans-serif">
<tbody><tr style=3D"font-size:13px;line-height:normal"><td style=3D"font-si=
ze:11px;font-family:monospace;overflow:hidden;padding:1px 2px;vertical-alig=
n:top">DESCRIPTION =3D &quot;A test image for Gumstix boards.&quot;<br>LICE=
NSE =3D &quot;CLOSED&quot;<br>
<br>IMAGE_INSTALL +=3D &quot; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 coreu=
tils \<br>&quot;<br><br>Thanks,<br>Bharath.<br><br></td></tr></tbody></tabl=
e><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">On Tue, Jul 8, 2014 at 5:42 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linu=
xfoundation.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi Bharath,<br><br></d=
iv>IMAGE_INSTALL +=3D &quot; \<br><div class=3D"gmail_extra"><div class=3D"=
gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 coreutils \<br>=
<div>&quot;<br clear=3D"all"><div></div></div></div></blockquote><div><br><=
/div><div>You may want to post your entire recipe.<br></div><div class=3D""=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">

<div dir=3D"ltr"><div><div>in my image file. But, I do not see any coreutil=
s package in tmp folder. <br>
</div><div>Let me know if my understanding is wrong. <br></div><div>=C2=A0<=
br></div></div></div></blockquote></div><div>It should be in tmp/work/i586-=
poky-linux/coreutils/ if you are building for x86.<br><br></div><div>Did yo=
u check your image too?<br>

</div><div>=C2=A0<br><br></div><div>Best regards,<br>Rudi<br></div></div></=
div></div>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"=
ltr">Thanks &amp; Regards,<div>Bharath Chandra Elluru.</div><div>Contact Nu=
mber:785-979-4875.</div></div>
</div>

--047d7b5d5ffefbaeac04fdb711ac--
