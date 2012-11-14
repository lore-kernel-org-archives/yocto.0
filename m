Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1C74E003D6
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:45:49 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id s11so668233qaa.14
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 10:45:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=SdZnq+UhA32/XYINVA1/EozRa4s8vRCq7djINyEORB8=;
	b=AjCi0eFLlWoTG30CMB4L959K/g8QZ+CFpjnvEAw9a8r0Oik2Zq9GLtUh6AyIhYLs4K
	IUpU8fa6rRGtxSl/TgtPuOCJWgf8rgDK+1n7dHQSL56RaXEVKN0YUtgBmIWRJSteZKjj
	7PoyJTryFmB2qxQkCCxX0en7eBf2nlZ9b7eN0u3CjMJXszsTFrgV/eOXTin9jSnXi13g
	VHgAmjid0rW1SoNptzXy3zO31knWKktIzoLQb5TILWKHvVjO4YXbZt9YikHfTSGEIn89
	AIxlxpMga1hbm7WGvnno+uv0oTtOfkWoTHvDNawTGhvnb7tNjzlmKP0UMDTqYzR5+O/R
	7t3w==
MIME-Version: 1.0
Received: by 10.224.178.201 with SMTP id bn9mr26357973qab.55.1352918749107;
	Wed, 14 Nov 2012 10:45:49 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.49.54.197 with HTTP; Wed, 14 Nov 2012 10:45:48 -0800 (PST)
Received: by 10.49.54.197 with HTTP; Wed, 14 Nov 2012 10:45:48 -0800 (PST)
In-Reply-To: <6EACEDBB9EFFF34A830B94662D4D9A162E843F8C@FMSMSX102.amr.corp.intel.com>
References: <6EACEDBB9EFFF34A830B94662D4D9A162E843F8C@FMSMSX102.amr.corp.intel.com>
Date: Wed, 14 Nov 2012 10:45:48 -0800
X-Google-Sender-Auth: jLDEk0WOBJh5voGV2sAF4_JIaN4
Message-ID: <CA+gsK-qeGsTAdyvWtNQsybya5pdfP6he2SYO35hVVxRi0xK75w@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Ramming, Brian" <brian.ramming@intel.com>
X-Gm-Message-State: ALoCoQms6nxf8lv/YI2wIGQqEZ5SNWL3lRwRYBK2xw6pKqayI8TNcTdMRLpOUfP967X3P0HG4OJ1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_fetch failure with libowl-0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Nov 2012 18:45:50 -0000
Content-Type: multipart/alternative; boundary=20cf303b3afd7356e204ce78f1fc

--20cf303b3afd7356e204ce78f1fc
Content-Type: text/plain; charset=ISO-8859-1

Looks like the downloaded source file is corrupted although that should be
caught by the checksum verification. Try to locate the source file in
DL_DIR and unpack it manually. If it is corrupt delete the file, run a
cleanall on the libowl recipe and run bitbake again.

Rudi
On Nov 14, 2012 10:39 AM, "Ramming, Brian" <brian.ramming@intel.com> wrote:

>  Hello,****
>
> ** **
>
> I am looking into converting my layer from Yocto 1.2 to Yocto 1.3 running
> into an issue when trying to build my image. It fails when trying to fetch
> libowl-0.1:****
>
> ** **
>
> ERROR: Fetcher failure: Fetch command failed with exit code 2, output:****
>
> tar: Skipping to next header****
>
> ** **
>
> gzip: stdin: invalid compressed data--crc error****
>
> ** **
>
> gzip: stdin: invalid compressed data--length error****
>
> tar: Child returned status 1****
>
> tar: Error is not recoverable: exiting now****
>
> ** **
>
> DEBUG: Python function base_do_fetch finished****
>
> DEBUG: Python function do_fetch finished****
>
> ERROR: Function failed: Fetcher failure for URL: 'git://
> git.yoctoproject.org/libowl;protocol=git'. Unable to fetch URL from any
> source.****
>
> ** **
>
> ** **
>
> I attached the full log from:
> \build\tmp\work\core2-poky-linux\libowl-0.1+git1+6ebc8ac8f8575278dd40a535cadefa26374e44b1-r0
> ****
>
> ** **
>
> If there is anything else that I should attach, or additional information
> I should provide please let me know.****
>
> ** **
>
> Any information on this would be much appreciated.****
>
> ** **
>
> Thank you kindly,****
>
> Brian R.****
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--20cf303b3afd7356e204ce78f1fc
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Looks like the downloaded source file is corrupted although that should =
be caught by the checksum verification. Try to locate the source file in DL=
_DIR and unpack it manually. If it is corrupt delete the file, run a cleana=
ll on the libowl recipe and run bitbake again.</p>

<p>Rudi</p>
<div class=3D"gmail_quote">On Nov 14, 2012 10:39 AM, &quot;Ramming, Brian&q=
uot; &lt;<a href=3D"mailto:brian.ramming@intel.com">brian.ramming@intel.com=
</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">






<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I am looking into converting my layer from Yocto 1.2=
 to Yocto 1.3 running into an issue when trying to build my image. It fails=
 when trying to fetch libowl-0.1:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Fetcher failure: Fetch command failed =
with exit code 2, output:<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">tar: Skipping to next header<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">gzip: stdin: invalid compressed data--crc err=
or<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">gzip: stdin: invalid compressed data--length =
error<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">tar: Child returned status 1<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">tar: Error is not recoverable: exiting now<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;"><u></u>=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">DEBUG: Python function base_do_fetch finished=
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">DEBUG: Python function do_fetch finished<u></=
u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-fa=
mily:&quot;Courier New&quot;">ERROR: Function failed: Fetcher failure for U=
RL: &#39;git://<a href=3D"http://git.yoctoproject.org/libowl;protocol=3Dgit=
" target=3D"_blank">git.yoctoproject.org/libowl;protocol=3Dgit</a>&#39;. Un=
able to fetch URL from any source.<u></u><u></u></span></p>

<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">I attached the full log from: \build\tmp\work\core2-=
poky-linux\libowl-0.1+git1+6ebc8ac8f8575278dd40a535cadefa26374e44b1-r0<u></=
u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">If there is anything else that I should attach, or a=
dditional information I should provide please let me know.<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Any information on this would be much appreciated.<u=
></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<p class=3D"MsoNormal">Thank you kindly,<u></u><u></u></p>
<p class=3D"MsoNormal">Brian R.<u></u><u></u></p>
</div>
</div>

<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--20cf303b3afd7356e204ce78f1fc--
