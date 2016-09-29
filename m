Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 720B2E00CD9; Thu, 29 Sep 2016 05:31:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5293CE00CB0
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 05:31:49 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id q42so64141449uaq.2
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 05:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G5wevkq+chwzHgMyevqkv3WR14XA7ePmBYqVlgxgVHs=;
	b=i/gkEBy+5gmBr8sNnKVtbw80T4P2pGnwVDFB6mxwYzunitiF4nUWMEzLh6Fd1k53vz
	65+WDfd5XcLHnGE5OySQol+EqXcApP3atrmDG646Q4VbshST0EZlfnlD96Yaz4x46tYX
	bLnpbiby6lFY5kb+2jU6tMBkCgfZrWEVYL3sBGRohAr8oUNFBlDc1IB8Try/cBE88BkS
	ymRXTm0KLh1zQUglYCGC0+ciFrnvWpfWA+a0h5+QaDgeVOvyXNYW+7ZpRN93Hgm/F4cb
	tgZ36540N9eLoX6yXMkQn3dLMLXFdgelJzORXezTU+AY2JUT+2R1b+t2+DgPiAIfw/KE
	JZUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G5wevkq+chwzHgMyevqkv3WR14XA7ePmBYqVlgxgVHs=;
	b=B/ySXsZHFhtWJBVultgVXnuARjjLgI4Z7lY2EiW9gAc9/O3reuhMWR1+okEGQr10b8
	JhjTOWAw82719cdec8nHZWhLWJTKA4RjQVqrZWVKM+9naQ/NzqGqkGCtp95kjKh/N/Ue
	ZBY8UYjFomuu9pd8dTpz6GMUAZ+uW5p1GzJ47p4rdHbK5Y0iihv0Fv4Y+7U/UP5o7h67
	ypXPFwujd1bww3c1nDUqqONeNb3+HquTKQMMNL3GewSbmGCCUVNDiBIu6iZgSF8ELaqc
	FvQpCcQtLzil3O06p/50rw7zXv9Ga1B4WqB7AtUjdQGsRP1gYoHomRvoH5aCCZGC4csd
	rYuw==
X-Gm-Message-State: AA6/9Rl7G1nGqe+ISedi9Q8Xbp3dMkyOa8Ms07bJliEMGIPH14jlNlAG9PfaLgZI1vLElbvH75xIZqHDCvw2Zw==
X-Received: by 10.176.85.92 with SMTP id u28mr697256uaa.13.1475152309121; Thu,
	29 Sep 2016 05:31:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.83.207 with HTTP; Thu, 29 Sep 2016 05:31:48 -0700 (PDT)
In-Reply-To: <CAEjjReLExjL7Xn=vqKo_=CzR3dR52D-UJG=+FONDxg5LJLoqew@mail.gmail.com>
References: <c7f9192f-3477-b0fb-a6ca-8d12d3368c47@seldal.com>
	<CAEjjReLExjL7Xn=vqKo_=CzR3dR52D-UJG=+FONDxg5LJLoqew@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Thu, 29 Sep 2016 14:31:48 +0200
Message-ID: <CAEjjReLypGJNwE1B5cEduH=r5DrrARHkZyzC4HaH+wRbYnvvXA@mail.gmail.com>
To: Svein Seldal <sveinse@seldal.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: Force nostamp from recipe
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
X-List-Received-Date: Thu, 29 Sep 2016 12:31:53 -0000
Content-Type: multipart/alternative; boundary=f403045dd8645ff7d4053da4a9b6

--f403045dd8645ff7d4053da4a9b6
Content-Type: text/plain; charset=UTF-8

Hi,
Sorry it should be:

do_configure[nostamp] = "1"

Br,
Chris Z

On Thu, Sep 29, 2016 at 2:29 PM, Chris Z. <winotu.email@gmail.com> wrote:

> Hi,
>
> do_configure[noexec] = "1"
>
>
>
> http://www.crashcourse.ca/wiki/index.php/BitBake_task_flags
>
> On Thu, Sep 29, 2016 at 10:23 AM, Svein Seldal <sveinse@seldal.com> wrote:
>
>> Hi
>>
>> I have a recipe using externalsrc, and with the version of poky I'm
>> running, it nostamps do_compile.
>>
>> Can I force other nostamp tasks from my recipe? E.g. do_configure?
>>
>> I'm building this recipe for one MACHINE and then rerun the compilation
>> for another MACHINE. The recipe is setup to build for tune, which is equal.
>> The latter run fails linking because it's referring to the first machine's
>> sysroot, not the second. This would have been fixed if the second run would
>> call the do_configure task.
>>
>>
>> Best regards,
>> Svein
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--f403045dd8645ff7d4053da4a9b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre>Hi,<br>Sorry it should be:<br><br>do_configure[nostam=
p] =3D &quot;1&quot;<br><br></pre><div class=3D"gmail_extra">Br,<br></div><=
div class=3D"gmail_extra">Chris Z<br><br></div><div class=3D"gmail_extra"><=
div class=3D"gmail_quote">On Thu, Sep 29, 2016 at 2:29 PM, Chris Z. <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:winotu.email@gmail.com" target=3D"_blank">=
winotu.email@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr">Hi,<br><br><pre>do_configure[noexec] =3D &quot;1&quot;=
</pre><br><br><a href=3D"http://www.crashcourse.ca/wiki/index.php/BitBake_t=
ask_flags" target=3D"_blank">http://www.crashcourse.ca/<wbr>wiki/index.php/=
BitBake_task_<wbr>flags</a><br></div><div class=3D"HOEnZb"><div class=3D"h5=
"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Sep 29,=
 2016 at 10:23 AM, Svein Seldal <span dir=3D"ltr">&lt;<a href=3D"mailto:sve=
inse@seldal.com" target=3D"_blank">sveinse@seldal.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Hi<br>
<br>
I have a recipe using externalsrc, and with the version of poky I&#39;m run=
ning, it nostamps do_compile.<br>
<br>
Can I force other nostamp tasks from my recipe? E.g. do_configure?<br>
<br>
I&#39;m building this recipe for one MACHINE and then rerun the compilation=
 for another MACHINE. The recipe is setup to build for tune, which is equal=
. The latter run fails linking because it&#39;s referring to the first mach=
ine&#39;s sysroot, not the second. This would have been fixed if the second=
 run would call the do_configure task.<br>
<br>
<br>
Best regards,<br>
Svein<span><font color=3D"#888888"><br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div></div>

--f403045dd8645ff7d4053da4a9b6--
