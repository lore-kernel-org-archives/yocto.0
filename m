Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAFB3E00D43; Tue, 28 May 2019 20:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7348CE00A7D
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 20:46:23 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id l25so618906otp.8
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 20:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=mJNzn2M+zgkz8Tn4ecHd5EG+VVS6oWkQTaXUje3d1kA=;
	b=Mx8uIF3JtAQGZE6/z3ejDIqKHluIgBBp1TkDg/AlYzvnQ9LdSu5+wZP+IkCUspK/BS
	hYsX6TLfoqqJhIw9D9w2Z/edL/PIjw5sH9dfS1jm28NKALnsCSJXczykIgWHEHFbqZs6
	+vq3d40HZtwrUzSEDHvpo3TnjlOcwOVhVb2/3brxcWZtxLcmie1BoIrXXyxl3BSByDOP
	EobDbrA2IDPSJZX6a/X5FlViyjlF5DftfmsGGWA2ofZvpLwaIOPVuFE5bf4YHXdUBA2H
	HDWCuERv5iKZxY6dvHYw8ydqXcTVOieT2ni2dxopbPOcVRYUKwcIWRAWpRyWpPf+pKhY
	dYUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=mJNzn2M+zgkz8Tn4ecHd5EG+VVS6oWkQTaXUje3d1kA=;
	b=e8+5VTeXvKY+3DZ5EuJH3B7fwT3x2/UKqbdnmeswSikb/LxMI9Ld9aqPezM2QR7ssR
	N5kxMboB7zxx1gikk3pUA9SjQXu6HVM2lM/E7g5GoCHgrDbWcL1HiUIHISX0e/MkfDLE
	/tfHG/r0Cvok2PsxipGU+fzBvj4DugJ0kkXFNqO789khD+llhxFSZRlToislhN9D88vB
	nV4lNJ/vDM4nJegXZ29eHo1jImUPotNVc9K1c+quBtJMyE5NUbWkXbLNylEM97Jk5N+2
	/RD7/68THeEqco707xVzRe0llTyMu8CylnHXIzMiH+VTwlAenDST4FPZ2nO146iyUauZ
	p4FA==
X-Gm-Message-State: APjAAAUcC1793xtv2Hz6jE2DLHRORN0vzNmCF9iMA2C8roHMcb2nFsgM
	1z3hkJHH31zalEesPCy40CkqB5CTCK6+5BeHmRqU+8TH
X-Google-Smtp-Source: APXvYqyXbNHWQ2PGx1o92/KOuzzJlWGY09Mc3mAQ/+sKNoDhx5QVD/enzUp0n+xDVeSF4eQ1EgwTfzyF67g31ApRhHc=
X-Received: by 2002:a9d:69d9:: with SMTP id v25mr39582oto.4.1559101582490;
	Tue, 28 May 2019 20:46:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAA_f9ePQ3mFXpTQBQPEo6-HVgvBma6C3nkNu9k6iHy64-CYe2w@mail.gmail.com>
	<CAA_f9eMaMJKm8fqwcvti+7BDCc9WjzS2X+u3OeRWuYFs0=-nrg@mail.gmail.com>
In-Reply-To: <CAA_f9eMaMJKm8fqwcvti+7BDCc9WjzS2X+u3OeRWuYFs0=-nrg@mail.gmail.com>
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Wed, 29 May 2019 09:16:11 +0530
Message-ID: <CAA_f9ePDefA8KeyJHZWDVasLX8T_jkV_tXEvzK6PQ3c5=g+zaA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Custom eSDK build fails
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
X-List-Received-Date: Wed, 29 May 2019 03:46:24 -0000
Content-Type: multipart/alternative; boundary="000000000000fe40be0589fe9fc7"

--000000000000fe40be0589fe9fc7
Content-Type: text/plain; charset="UTF-8"

I have made changes in populate_sdk_ext.bbclass to copy my layers during
do_populate_sdk and that works fine.
Now, I'm hitting failure at :
*ERROR: Failed to generate filtered task list for extensible SDK *( after
this it prints the contents of my custom conf-notes)

Looking at the source of this error, it comes from populate_sdk_ext.bbclass
-
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/populate_sdk_ext.bbclass#n170
And its failing because its not finding a tasklist_bb_log.txt.

This text file contains logs of setscene tasks of all the packages built.
For some reason, this file is not getting auto-generated for my custom
image.

Any hints?

Warm Regards,
Priyanshu Sharma

On Wed, May 15, 2019 at 3:57 PM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> I see that my custom layers are not being copied in
> <image-workdir>/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/layers. Though
> the conf files at
> <image-workdir>/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/conf.
>
> How can I include my layers also in this?
>
> Warm Regards,
> Priyanshu Sharma
>
> On Thu, May 2, 2019 at 3:12 PM Priyanshu Sharma <
> ms.priyanshu.sharma@gmail.com> wrote:
>
>> Hi,
>>
>> I've a custom Yocto layer and use that as TEMPLATECONF for building. My
>> custom layer also contains the image recipe based on pulsar-image (from
>> meta-ivi).
>>
>> I'm using Yocto 2.5. The extensible sdk build fails at
>> do_populate_sdk_ext task for my image recipe.
>>
>> $ bitbake <image> -f -c populate_sdk_ext
>> Error -
>> Exception: FileNotFoundError: [Errno 2] No such file or directory:
>> '<path-in-build-direcroty>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf.bak'
>> ->
>> '<path-in-biuld-directory>/<image>/<PV>/sdk-ext/image//opt/<distro>/2.5.1/conf/local.conf'
>>
>> If I check the path, <>/sdk-ext/image//opt/<distro>/2.5.1 , this
>> directory is getting created but getting deleted afterwards.
>> And  the one left after build fails is -
>> <>/sdk-ext/image//opt/<distro>/layers
>>
>> Is there any configuration to be modified/added for my custom image?
>>
>> Warm regards,
>> Priyanshu Sharma
>>
>

--000000000000fe40be0589fe9fc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br>I have made changes in populate_sdk_e=
xt.bbclass to copy my layers during do_populate_sdk and that works fine.=C2=
=A0<br>Now, I&#39;m hitting failure at :<br><b>ERROR: Failed to generate fi=
ltered task list for extensible SDK </b>( after this it prints the contents=
 of my custom conf-notes)<br><br>Looking at the source of this error, it co=
mes from populate_sdk_ext.bbclass -=C2=A0

<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classe=
s/populate_sdk_ext.bbclass#n170">https://git.yoctoproject.org/cgit/cgit.cgi=
/poky/tree/meta/classes/populate_sdk_ext.bbclass#n170</a><br>And its failin=
g because its not finding a tasklist_bb_log.txt.<br><br>This text file cont=
ains logs of setscene tasks of all the packages built. For some reason, thi=
s file is not getting auto-generated for my custom image.=C2=A0<br><br>Any =
hints?<br><br></div><div>Warm Regards,</div><div>Priyanshu Sharma</div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ma=
y 15, 2019 at 3:57 PM Priyanshu Sharma &lt;<a href=3D"mailto:ms.priyanshu.s=
harma@gmail.com">ms.priyanshu.sharma@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I see that m=
y custom layers are not being copied in &lt;image-workdir&gt;/sdk-ext/image=
/opt/${DISTRO}/${POKY_VERSION}/layers. Though the conf files at &lt;image-w=
orkdir&gt;/sdk-ext/image/opt/${DISTRO}/${POKY_VERSION}/conf.<div><br></div>=
<div>How can I include my layers also in this?</div><div><br></div><div>War=
m Regards,</div><div>Priyanshu Sharma</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2019 at 3:12 PM P=
riyanshu Sharma &lt;<a href=3D"mailto:ms.priyanshu.sharma@gmail.com" target=
=3D"_blank">ms.priyanshu.sharma@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
Hi,<div><br></div><div>I&#39;ve a custom Yocto layer and use that as TEMPLA=
TECONF for building. My custom layer also contains the image recipe based o=
n pulsar-image (from meta-ivi).=C2=A0</div><div><br></div><div>I&#39;m usin=
g Yocto 2.5. The extensible sdk build fails at do_populate_sdk_ext task for=
 my image recipe.</div><div><br></div><div><font face=3D"trebuchet ms, sans=
-serif">$ bitbake &lt;image&gt; -f -c populate_sdk_ext</font></div><div>Err=
or -</div><div><font face=3D"trebuchet ms, sans-serif">Exception: FileNotFo=
undError: [Errno 2] No such file or directory: &#39;&lt;path-in-build-direc=
roty&gt;/&lt;image&gt;/&lt;PV&gt;/sdk-ext/image//opt/&lt;distro&gt;/2.5.1/c=
onf/local.conf.bak&#39; -&gt; &#39;&lt;path-in-biuld-directory&gt;/&lt;imag=
e&gt;/&lt;PV&gt;/sdk-ext/image//opt/&lt;distro&gt;/2.5.1/conf/local.conf&#3=
9;</font><br></div><div><br></div><div>If I check the path, &lt;&gt;/sdk-ex=
t/image//opt/&lt;distro&gt;/2.5.1 , this directory is getting created but g=
etting deleted afterwards.</div><div>And=C2=A0 the one left after build fai=
ls is - &lt;&gt;/sdk-ext/image//opt/&lt;distro&gt;/layers<br><br>Is there a=
ny configuration to be modified/added for my custom image?</div><div><br></=
div><div>Warm regards,<br>Priyanshu Sharma</div></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000fe40be0589fe9fc7--
