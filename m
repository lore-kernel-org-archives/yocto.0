Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4962AE00DED; Tue,  6 Mar 2018 13:00:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CE1E00823
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 13:00:20 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id e30so532602ioc.3
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 13:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cqCdzpGE3MsdCTr0pAxsqfnG8elSz4PLh8Rn+BaNugg=;
	b=QhXea0lxqqq+JERKfdIjNE3LQM8eSffuGmkLYsvJrVc79o/AthSvuRCaZtQ+/HYvbs
	rH9k286BT8BGgM1XpYS7eOF+UTk9cGpL7uIzt0ejzvapxyt08ENtTt91TcnOjyUrqD5D
	IdKGVIab+d2vYiOsknIn0QIRAHApuI9rI03S4mPRWNO/JF9gBtUwY7PG4MPJG8Kgu3/n
	FE8DPQ4vgJ9dOkVhPHQAfY8TzkamXXvRmW90fWxl0tgAliBPaBis4NbyX9bZYoXK9yoa
	8YppYfJz3sJcKMtOkkHd05IqBeguvXvf6j3rmb483LoqUTyEOl/0TSSxtCAOyiqOOlNl
	bEpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cqCdzpGE3MsdCTr0pAxsqfnG8elSz4PLh8Rn+BaNugg=;
	b=c5jmSstNszkdlJEry+HqHjoJNOhU65JR6xADFeyNUdGIl0nVRwaHyDDT1vjoD2+3Ds
	kOySg5ehuS9AoVYDLUnHbG6Spn5RBhW1m1wtZp4fZH7X+0JjfB+H2p+x4PUfKlmfE79j
	78LlmK+WaG+bJ3ERM9ZETdskcHxHp5jeztIGwplhZOk7cP8SRT6uL9sRnFC4UlkbsJMk
	gIngKFxiaYg6hQRkx3SuEf17QjqHXNu4S9AQp81iKfulKjk+JRsAvQNB3CrmsZvMmVZa
	UnOaDH/Gd7M5cuGCkL8s3hz1zfpqf0aYBVbDFAkILaiodH/ftoDyQpj538nEFC6Zb1SN
	bBNQ==
X-Gm-Message-State: APf1xPD+82kAXQHlEUL/p2ZvdxwhIORk3aY//iCnlFFfGXtlP8nC9m+W
	s8HDHjmpL5T3lXNXa31614fqe0ff8zYRI9SyQljsnw==
X-Google-Smtp-Source: AG47ELsoNTOzcrhOLeXKFmQINifweqmIZK9ATTAYan2aQvKWL2hO5fNIcL3KE1iwrt2GyyoxwFrsO0l0j+IJuL05D4Q=
X-Received: by 10.107.6.139 with SMTP id f11mr24344632ioi.23.1520370019665;
	Tue, 06 Mar 2018 13:00:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 12:59:59 -0800 (PST)
In-Reply-To: <CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 20:59:59 +0000
Message-ID: <CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 21:00:21 -0000
Content-Type: multipart/alternative; boundary="001a113eeaeaf31df50566c4ba4f"

--001a113eeaeaf31df50566c4ba4f
Content-Type: text/plain; charset="UTF-8"

If the cmakelists file doesn't install that (and it should) then yes you'll
need to use do_install_append.

Ross

On 6 March 2018 at 20:46, Giordon Stark <kratsg@gmail.com> wrote:

> Great. So when I have this recipe set up -- how do I make sure, or tell
> other people who write a recipe depending on this -- how to find a header
> file built by it?
>
> Specifically, I see this header file in a (non-standard?) location which
> is normally linked by others:
>
> |  #include <open62541.h>
>
> and this header file is at ${B}/open62541.h (tmp/work/aarch64-poky-linux/
> open62541/0.3-r0/build/open62541.h). Is this something that I just handle
> with a `do_install_append()` line? The documentation here
> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html isn't
> very clear to me.
>
> e.g. for another recipe that just adds "open62541" in it's DEPENDS.
>
> Giordon
>
> On Tue, Mar 6, 2018 at 2:32 PM Burton, Ross <ross.burton@intel.com> wrote:
>
>> On 6 March 2018 at 20:24, Giordon Stark <kratsg@gmail.com> wrote:
>>
>>> You can drop the S assignment as that is the default value.
>>>>
>>>
>>> Didn't realize, neat. I knew I needed to set it for `git` clones since
>>> it always throws it into a ${WORKDIR}/git folder.
>>>
>>
>> Yes, for git clones you need to override it.
>>
>>
>>>
>>>> Github /archive/ tarballs can and do change over time, which gets very
>>>> annoying when you need to go and change the checksums.
>>>>
>>>
>>> Really? Dang...
>>>
>>
>> Yeah. :/  Took us ages to verify this happens but it definitely does.
>>
>>
>>> My hunch without reading the upstream CMake files is that they don't
>>>> support out-of-tree builds.  If it worked from git then that's another
>>>> reason to switch back.
>>>>
>>>
>>> It seems like this is the case here. I'm ok using git clones for now.
>>> Thanks.
>>>
>>
>> It *shouldn't* matter here as the /archive/ tarball should have identical
>> contents to a clone of the same tag, but it's possible that the build
>> system looks for a .git/ directory and changes how it builds.  That's kind
>> of stupid but it wouldn't be the first time I've seen it break builds.
>>
>> Ross
>>
> --
> Giordon Stark
>

--001a113eeaeaf31df50566c4ba4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If the cmakelists file doesn&#39;t install that (and it sh=
ould) then yes you&#39;ll need to use do_install_append.<div><br></div><div=
>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 March 2018 at 20:46, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Great. So when I ha=
ve this recipe set up -- how do I make sure, or tell other people who write=
 a recipe depending on this -- how to find a header file built by it?<div><=
br></div><div>Specifically, I see this header file in a (non-standard?) loc=
ation which is normally linked by others:</div><div><br></div><div><div>|=
=C2=A0 #include &lt;open62541.h&gt;</div></div><div><br></div><div>and this=
 header file is at <font face=3D"monospace">${B}/open62541.h (tmp/work/aarc=
h64-poky-linux/<wbr>open62541/0.3-r0/build/<wbr>open62541.h)</font>. Is thi=
s something that I just handle with a `do_install_append()` line? The docum=
entation here=C2=A0<a href=3D"https://www.yoctoproject.org/docs/current/dev=
-manual/dev-manual.html" target=3D"_blank">https://www.yoctoproject.<wbr>or=
g/docs/current/dev-manual/<wbr>dev-manual.html</a>=C2=A0isn&#39;t very clea=
r to me.</div><div><br></div><div>e.g. for another recipe that just adds &q=
uot;<font face=3D"monospace">open62541</font>&quot; in it&#39;s <font face=
=3D"monospace">DEPENDS</font>.</div><div><br></div><div>Giordon</div></div>=
<div class=3D"HOEnZb"><div class=3D"h5"><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr">On Tue, Mar 6, 2018 at 2:32 PM Burton, Ross &lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On 6 March =
2018 at 20:24, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg=
@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> wrote:<br></d=
iv><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><=
span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_ex=
tra"><div class=3D"gmail_quote"><div>You can drop the S assignment as that =
is the default value.</div></div></div></div></blockquote><div><br></div></=
span><div>Didn&#39;t realize, neat. I knew I needed to set it for `git` clo=
nes since it always throws it into a ${WORKDIR}/git folder.</div></div></di=
v></blockquote><div><br></div></div></div></div><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><div>Yes, for git clones you ne=
ed to override it.</div></div></div></div><div dir=3D"ltr"><div class=3D"gm=
ail_extra"><div class=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><span><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"=
gmail_quote"><div><br></div><div>Github /archive/ tarballs can and do chang=
e over time, which gets very annoying when you need to go and change the ch=
ecksums.</div></div></div></div></blockquote><div><br></div></span><div>Rea=
lly? Dang...</div></div></div></blockquote><div><br></div></div></div></div=
><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><di=
v>Yeah. :/ =C2=A0Took us ages to verify this happens but it definitely does=
.</div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div c=
lass=3D"gmail_quote"><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr"><div class=3D"gmail_quote"><span><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>My hunch without reading the upstream CMake files is that they don&#39;t s=
upport out-of-tree builds.=C2=A0 If it worked from git then that&#39;s anot=
her reason to switch back.=C2=A0</div></div></div></div></blockquote><div><=
br></div></span><div>It seems like this is the case here. I&#39;m ok using =
git clones for now. Thanks.</div></div></div></blockquote><div><br></div></=
div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><div>It *shouldn&#39;t* matter here as the /archive/ tarball sh=
ould have identical contents to a clone of the same tag, but it&#39;s possi=
ble that the build system looks for a .git/ directory and changes how it bu=
ilds.=C2=A0 That&#39;s kind of stupid but it wouldn&#39;t be the first time=
 I&#39;ve seen it break builds.</div></div></div></div><div dir=3D"ltr"><di=
v class=3D"gmail_extra"><div class=3D"gmail_quote"><div><br></div><div>Ross=
</div></div></div></div></blockquote></div></div></div><span class=3D"HOEnZ=
b"><font color=3D"#888888">-- <br><div dir=3D"ltr" class=3D"m_-576577150795=
5939441gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
>Giordon Stark</div></div>
</font></span></blockquote></div><br></div>

--001a113eeaeaf31df50566c4ba4f--
