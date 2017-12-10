Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4339E00D20; Sun, 10 Dec 2017 13:43:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D052AE008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 13:43:53 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id p84so10094227pfd.3
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 13:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WoEGmd0HGPipigbiFMasSEaLDzlPdTiMF10cgVmJeo0=;
	b=BOWXqQE29vHtRJZJialjiSCouvQsAkBlLhFpo5fr6vL31GTw1r/IFXAmAqZYsRjOan
	KuSr1ciOVBNfQgPIyDHUnemBrXFkeOacrSRHBXfaOD0M4v2qtcpSPKTYLjw4EScLXx+G
	U1rDZCkPHReI49D2RP0Nk/Pv53yZ2MiEBnNp86I+bIVmC4V7HcqqtIBYHIXXSeMfX3TF
	sfaubUbOK5KNOwGXz6RFPBkWAMmvZCMfsOj2m6pLfh+ZK+kQUZrVFzhM2Ke079SL5jW0
	88yUxn7XWCmPQ42O3Ntpw/+rhBjqXXjNGNK3ZXP/baqYpvR4dFs1S4OhnBYWViajacqX
	QM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WoEGmd0HGPipigbiFMasSEaLDzlPdTiMF10cgVmJeo0=;
	b=uCgbxSZJifmZHaa5QnhYpFNJHGJD+33riv1XYGnlANwqS5iiDqc5I5LJj6cst0nl8e
	GFnwZ5PLvfHyNSRq601LZSzY59Im2P5J1uPnWBvsn7Xb+ehXCE9SH0NxZ01r4pRDC6AL
	nmtL2hYb80Hats+BtFfkzQycYr8N5a+MgKz/ykOx1GApEqXm3GRixeecq2MoX3QKV7Pk
	DDTXpRYt4PrFd/26mBuwsb6euNzbqhCM9Ypgvc0EBT5HVbeZu3FEjp7Mq4IFDc3TWtr9
	6sWLieSXNG7FVKzNjFCh6UgA3+kKCFfO9GzBJJeVupuZhAj1C2wurdsdwtY8+ThfSxV0
	7n8w==
X-Gm-Message-State: AJaThX5Roob9Yjp4PdifmkrcAzLiRS9XpSJ6Eq3sNdyPG4ZNIirxLhWo
	gIlYgUTlaIld3NfUyG0r67/GTuBQhJl9lUzEennTtw==
X-Google-Smtp-Source: AGs4zMbDM7NjFU5UrtZcbtrMMsNDkxq0hpQ2InKJ55zW3m8C9paSJ6CUqfHrFfOSp5nYrMDXCsyhy5058lNZn1qHJAs=
X-Received: by 10.99.42.210 with SMTP id q201mr35396296pgq.7.1512942232952;
	Sun, 10 Dec 2017 13:43:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Sun, 10 Dec 2017 13:43:52 -0800 (PST)
In-Reply-To: <CAPb0b+N6+9PTKF2z6VCUfye9RF8tEavUCkK7SBa2LaF-3TGrMw@mail.gmail.com>
References: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
	<CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
	<CAPb0b+N6+9PTKF2z6VCUfye9RF8tEavUCkK7SBa2LaF-3TGrMw@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Sun, 10 Dec 2017 22:43:52 +0100
Message-ID: <CAPb0b+NGzO888YqtD8t5RHuqDD1eT3Gc7zqSoVFepEhUX6h9QA@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 21:43:54 -0000
Content-Type: multipart/alternative; boundary="001a1146df145c651b0560035013"

--001a1146df145c651b0560035013
Content-Type: text/plain; charset="UTF-8"

i found the solution for it and posted it here
https://stackoverflow.com/questions/47738738/how-to-disable-psplash-screen-in-yocto/47743610#47743610

but there is still one problem, that comes from this patch
https://patchwork.openembedded.org/patch/47017/

i get the following :


*umount: can't unmount /mnt/.psplash: Invalid argument*



*it comes from the umount -> because it is unmounting unexisitng
folder. i dont understand this code clearly. *if type psplash-write
>/dev/null 2>&1; then
         TMPDIR=/mnt/.psplash psplash-write "QUIT" || true
     	umount /mnt/.psplash


On Sun, Dec 10, 2017 at 8:37 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> thank you for your reply. I don't find these parameters in any recipe. I
> am still confused, how to approach.
>
>
> On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> > As far as i understood, we can pass it from uboot, but how?
>> https://community.nxp.com/thread/460796
>>
>> Zoran
>>
>> On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran <sherifomran2000@gmail.com>
>> wrote:
>>
>>> hi
>>>
>>> any body knows how to diable the psplash? as per documentation it says
>>> pass psplash=false to the kernel. But how to pass it to the kernel? I tried
>>> adding it to kernel.cfg but does not seem to be correct. As far as i
>>> understood, we can pass it from uboot, but how?
>>>
>>> thanks for your help
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>

--001a1146df145c651b0560035013
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre><code>i found the solution for it and posted it here =
<br><a href=3D"https://stackoverflow.com/questions/47738738/how-to-disable-=
psplash-screen-in-yocto/47743610#47743610">https://stackoverflow.com/questi=
ons/47738738/how-to-disable-psplash-screen-in-yocto/47743610#47743610</a><b=
r></code></pre><pre><code>but there is still one problem, that comes from t=
his patch<br><a href=3D"https://patchwork.openembedded.org/patch/47017/">ht=
tps://patchwork.openembedded.org/patch/47017/</a><br><br></code></pre><pre>=
<code>i get the following : </code><br><strong>umount: can&#39;t unmount /m=
nt/.psplash: Invalid argument<br><br></strong></pre><pre><strong>it comes f=
rom the umount -&gt; because it is unmounting unexisitng folder. i dont und=
erstand this code clearly. <br><br></strong>if type psplash-write &gt;/dev/=
null 2&gt;&amp;1; then
         TMPDIR=3D/mnt/.psplash psplash-write &quot;QUIT&quot; || true
     	umount /mnt/.psplash<br></pre></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Sun, Dec 10, 2017 at 8:37 PM, Sherif Omran <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_b=
lank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">thank you for your reply. I don&#39;t find t=
hese parameters in any recipe. I am still confused, how to approach.<br><br=
></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsa=
vljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.c=
om" target=3D"_blank">zoran.stojsavljevic@gmail.com</a><wbr>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span><div><span sty=
le=3D"font-size:12.8px">&gt; As far as i understood, we can pass it from ub=
oot, but how?</span><br></div></span><a href=3D"https://community.nxp.com/t=
hread/460796" target=3D"_blank">https://community.nxp.com/thre<wbr>ad/46079=
6</a><br><div><br></div><div>Zoran</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote"><div><div class=3D"m_-6847511739183215471h5">O=
n Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gma=
il.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><div class=3D"m_-6847511739183215471h5"><div dir=3D"ltr"><div><div>hi =
<br><br></div>any body knows how to diable the psplash? as per documentatio=
n it says pass psplash=3Dfalse to the kernel. But how to pass it to the ker=
nel? I tried adding it to kernel.cfg but does not seem to be correct. As fa=
r as i understood, we can pass it from uboot, but how?<br><br></div>thanks =
for your help<br></div>
<br></div></div><span class=3D"m_-6847511739183215471HOEnZb"><font color=3D=
"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a1146df145c651b0560035013--
