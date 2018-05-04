Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B302E00C50; Fri,  4 May 2018 05:50:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7C22E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 05:50:23 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id w123-v6so10033509oia.4
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 05:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b079qRGiiJp6qoDTEAMdKK5dM8hasib/HsUYoVssu/M=;
	b=DKg6+c2abt4B9QoEdSz3Mpt0bB3juGY1MGmoCRjjVn/xPI9G9SUH7sqGY5ZrZgKyZq
	4p4muzpg6p7di41FGXHK0rj42Xk1fkd6qWej8JPRT1IyhSuaUAhtB/+RTsNEgiGK4l3L
	ZL82hZ0cpXshwxemMSBim24wk4zPttRbma080r2juTQZ+cavqrdwtHCP6LnE1RHjCxUh
	2m/9PaHOk4KpBWqAmCRDjACGlVYUwvbQgOLrA8Ht8v5zZ76U6kKZrQDyB3Bicg4nrgUs
	wUu+mvliWBO4oQ7xWQyUOTQkSk58bRHpKUjwugNd3rVyn3FSgBJwhxww8vYOoJuIEOoi
	miIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b079qRGiiJp6qoDTEAMdKK5dM8hasib/HsUYoVssu/M=;
	b=ZCc/AbxklGfwywmkAqAlWFFJ4LM/6pPTkgRbAFmfssMr2V+zqYpoB2wYaYrNZ5IYeT
	w+QJB6VnYEAC0ViF1FT1f+ymeZF2qDMtwgDa1WdZ4cpbAux9hdd6fyN0NWrhhGIosO3n
	0bxK+KuqaXlNM7qbSfcDAD+OZ3FYA279i8SQYy10PJ15Z9fCtPEsUymoPRBFUHoqWx64
	aQe5RDlyG789PoKrt+dlSzc1tZuddCdCBVdxh7HxVp9L8n1W7t8fR4ex3+cGUAbPF4gB
	VndBboE4paN/nMYNUgN/WFoFD+e+tX2BHum57dVMwH2Af4hxRIQWc6ecH3AV5BfArD5R
	jiIg==
X-Gm-Message-State: ALQs6tB0cyatLKQUG1RXONwf0lwV6wYPBHR1k/bLXYk0WMdUUZ4o/Z6r
	8UEUKQUnW5YYoHBOUe728ZQL95BrMKNDrtvAI24=
X-Google-Smtp-Source: AB8JxZrTqya2vjPnkHY7+kXrJb5Zq78LH+x9UKHWyJvJkCmcujPP7rQFP9gxbaxAXp7x4qliQ2x1P4V+It2XN61j8vk=
X-Received: by 2002:aca:3152:: with SMTP id
	x79-v6mr17236014oix.74.1525438223129; 
	Fri, 04 May 2018 05:50:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7009:0:0:0:0:0 with HTTP;
	Fri, 4 May 2018 05:50:22 -0700 (PDT)
In-Reply-To: <ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
	<ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 4 May 2018 05:50:22 -0700
Message-ID: <CAFNP8OsBmFq2QCpx_EnwMhKdCDeEbtoHN=2tyXc_0s=G+W-wRg@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Fri, 04 May 2018 12:50:25 -0000
Content-Type: multipart/alternative; boundary="0000000000006aa274056b60c34d"

--0000000000006aa274056b60c34d
Content-Type: text/plain; charset="UTF-8"

If ROOTFS_RPM_DEBUG should be a documented variable in the Yocto Project
Reference Manual, could someone please provide me with some base
explanation of the variable and any usage specifics?

Thanks,
Scott

On Fri, May 4, 2018 at 5:41 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 05/04/2018 03:42 PM, Paulo Neves wrote:
>
>> I will propose a patch with a default bb.debug, and always have the
>> verbose on dnf. Let's see how it affects the performance. I cannot
>> test this in a docker container because of the problems described
>> below:
>>
>> In the mean time I found what was happening with my slow do_rootfs. I
>> was running bitbake with RPM packaging in a docker instance. It seems
>> there is a problem with RPM/dnf in bitbake where it is extremely slow
>> inside a docker container (1 file per second). After changing to IPK
>> packages everything went smoothly.
>>
>> Others have had the same problem[1]. I will later report this to
>> openembedded mailing list as this effectively makes RPM unusable in a
>> container. I will also provide a Dockerfile to reproduce this problem.
>>
>> [1] https://github.com/moby/moby/issues/23137#issuecomment-359097008
>>
>
> No need to report. We have already fixed this and reported upstream:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/rec
> ipes-devtools/rpm/files/0001-Revert-Set-FD_CLOEXEC-on-opene
> d-files-before-exec-fr.patch
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1537564
>
>
>
> Alex
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006aa274056b60c34d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>If ROOTFS_RPM_DEBUG should be a documented varia=
ble in the Yocto Project Reference Manual, could someone please provide me =
with some base explanation of the variable and any usage specifics?<br><br>=
</div>Thanks, <br></div>Scott<br></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Fri, May 4, 2018 at 5:41 AM, Alexander Kanavin <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.intel.com" tar=
get=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><span class=3D"">On 05/04/2018 03:42 PM, Paul=
o Neves wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I will propose a patch with a default bb.debug, and always have the<br>
verbose on dnf. Let&#39;s see how it affects the performance. I cannot<br>
test this in a docker container because of the problems described<br>
below:<br>
<br>
In the mean time I found what was happening with my slow do_rootfs. I<br>
was running bitbake with RPM packaging in a docker instance. It seems<br>
there is a problem with RPM/dnf in bitbake where it is extremely slow<br>
inside a docker container (1 file per second). After changing to IPK<br>
packages everything went smoothly.<br>
<br>
Others have had the same problem[1]. I will later report this to<br>
openembedded mailing list as this effectively makes RPM unusable in a<br>
container. I will also provide a Dockerfile to reproduce this problem.<br>
<br>
[1] <a href=3D"https://github.com/moby/moby/issues/23137#issuecomment-35909=
7008" rel=3D"noreferrer" target=3D"_blank">https://github.com/moby/moby/i<w=
br>ssues/23137#issuecomment-35909<wbr>7008</a><br>
</blockquote>
<br></span>
No need to report. We have already fixed this and reported upstream:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes=
-devtools/rpm/files/0001-Revert-Set-FD_CLOEXEC-on-opened-files-before-exec-=
fr.patch" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/=
cg<wbr>it/cgit.cgi/poky/tree/meta/rec<wbr>ipes-devtools/rpm/files/0001-<wbr=
>Revert-Set-FD_CLOEXEC-on-opene<wbr>d-files-before-exec-fr.patch</a><br>
<br>
<a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1537564" rel=3D"no=
referrer" target=3D"_blank">https://bugzilla.redhat.com/sh<wbr>ow_bug.cgi?i=
d=3D1537564</a><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
Alex<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--0000000000006aa274056b60c34d--
