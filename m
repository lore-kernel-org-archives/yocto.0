Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7B73E00862; Tue, 21 Oct 2014 23:27:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f170.google.com (mail-ob0-f170.google.com
	[209.85.214.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83FBCE00790
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 23:27:23 -0700 (PDT)
Received: by mail-ob0-f170.google.com with SMTP id nt9so932524obb.15
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 23:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/EdZ162HVooRhNJyflFuwNw8RvdzdG0r9xsKgoKBVqg=;
	b=KPMoNZpZh52IM8tO3k04rOPLApwTtVaSGCpJC6HuLIUhPKfIHbdRggZ/p4gFRHO1ZK
	MRq5THt/1weW1fBdmPmK/a3jMifVQz2EGRO2uKrvkNeWlKqNfw334NNgXREsMFIyuZAL
	Ea5bHpORa5Jq+rcQ6lUloJeOCw+dfrfDjmkv/IdSOIN1lX3O5Ub8zUCu3ur/sNQ1WyhX
	gK7PkFCAD4gEMuMxjTLDjZJ7szoWLSviEQoinRhfiqJtMLEb/fFLE7rPFoepoorWbJMM
	DLaEaLGvklyqXj7kcPv8WU6CKAfdTQ3hvSoaYXesV68cQDEq3l/w3Ru/f4UgBfbFAhdD
	wvYA==
MIME-Version: 1.0
X-Received: by 10.60.146.147 with SMTP id tc19mr548160oeb.49.1413959242188;
	Tue, 21 Oct 2014 23:27:22 -0700 (PDT)
Received: by 10.76.72.4 with HTTP; Tue, 21 Oct 2014 23:27:22 -0700 (PDT)
In-Reply-To: <5446753A.5060508@gmail.com>
References: <CACrgodd5fQP3yWfc7eYbVg8+oGPQWU4EG9thKmYV35-NfNX0HQ@mail.gmail.com>
	<5446753A.5060508@gmail.com>
Date: Wed, 22 Oct 2014 14:27:22 +0800
Message-ID: <CACrgoddu7K0cX3RLTO9CAunwPMUDxARENcWuLTfOQYugM2WBQA@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "linux-yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security] nmap build failed
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
X-List-Received-Date: Wed, 22 Oct 2014 06:27:34 -0000
Content-Type: multipart/alternative; boundary=047d7b5d42fe5b8f710505fd0a96

--047d7b5d42fe5b8f710505fd0a96
Content-Type: text/plain; charset=UTF-8

in local.conf add :
   CORE_IMAGE_EXTRA_INSTALL = "nmap"
and in bblayers.conf add (have download extra meta-openembedded layer into
poky folder)
   /poky/meta-openembedded/meta-oe \
   /poky/meta-openembedded/meta-perl \

Eddy Lai

2014-10-21 23:01 GMT+08:00 akuster808 <akuster808@gmail.com>:

> Lai,
>
> I can not reproduce this using daisy branch of yocto and opemembeded-core.
> Libtest does not exist in the daisy branch of meta-perl. Can you provide me
> with the Build Configuration when you first start to build and hoe you
> appended nmap to your image
>
> - Armin
>
> On 10/20/2014 02:27 AM, Lai Eddy wrote:
>
>> build with yocto 1.6.1 on Ubuntu 12.04,
>> have add extra dep. to local.conf according to REAME
>>    /poky/openembedded-core/meta \
>>    /poky/meta-openembedded/meta-oe \
>>    /poky/meta-openembedded/meta-perl \
>>    /poky/meta-security \
>>
>> but got following error message:
>>
>> $ bitbake -k core-image-full-cmdline
>> ERROR: ExpansionError during parsing
>> /poky/meta-openembedded/meta-perl/recipes-perl/libtest/libt
>> est-harness-perl_3.30.bb
>> <http://libtest-harness-perl_3.30.bb>: Failure expanding variable
>> do_fetch[file-checksums], expression was
>> ${@bb.fetch.get_checksum_file_list(d)} which triggered exception
>> MalformedUrl: The URL:
>> '${CPAN_MIRROR}/authors/id/L/LE/LEONT/Test-Harness-3.30.tar.gz' is
>> invalid and cannot be interpreted
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>>
>>
>>

--047d7b5d42fe5b8f710505fd0a96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">in local.conf add :<div>=C2=A0 =C2=A0CORE_IMAGE_EXTRA_INST=
ALL =3D &quot;nmap&quot;</div><div>and in bblayers.conf add (have download =
extra meta-openembedded layer into poky folder)</div><div>=C2=A0 =C2=A0/pok=
y/meta-openembedded/meta-oe \</div><div>=C2=A0 =C2=A0/poky/meta-openembedde=
d/meta-perl \</div><div><br></div><div>Eddy Lai<br><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">2014-10-21 23:01 GMT+08:00 akuster808 <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank=
">akuster808@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:=
rgb(204,204,204);border-left-style:solid;padding-left:1ex">Lai,<br>
<br>
I can not reproduce this using daisy branch of yocto and opemembeded-core. =
Libtest does not exist in the daisy branch of meta-perl. Can you provide me=
 with the Build Configuration when you first start to build and hoe you app=
ended nmap to your image<br>
<br>
- Armin<span class=3D""><br>
<br>
On 10/20/2014 02:27 AM, Lai Eddy wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:=
solid;padding-left:1ex"><span class=3D"">
build with yocto 1.6.1 on Ubuntu 12.04,<br>
have add extra dep. to local.conf according to REAME<br>
=C2=A0 =C2=A0/poky/openembedded-core/meta \<br>
=C2=A0 =C2=A0/poky/meta-openembedded/meta-<u></u>oe \<br>
=C2=A0 =C2=A0/poky/meta-openembedded/meta-<u></u>perl \<br>
=C2=A0 =C2=A0/poky/meta-security \<br>
<br>
but got following error message:<br>
<br>
$ bitbake -k core-image-full-cmdline<br>
ERROR: ExpansionError during parsing<br>
/poky/meta-openembedded/meta-<u></u>perl/recipes-perl/libtest/<a href=3D"ht=
tp://libtest-harness-perl_3.30.bb" target=3D"_blank">libt<u></u>est-harness=
-perl_3.30.bb</a><br></span>
&lt;<a href=3D"http://libtest-harness-perl_3.30.bb" target=3D"_blank">http:=
//libtest-harness-perl_<u></u>3.30.bb</a>&gt;: Failure expanding variable<s=
pan class=3D""><br>
do_fetch[file-checksums], expression was<br>
${@bb.fetch.get_checksum_file_<u></u>list(d)} which triggered exception<br>
MalformedUrl: The URL:<br>
&#39;${CPAN_MIRROR}/authors/id/L/<u></u>LE/LEONT/Test-Harness-3.30.<u></u>t=
ar.gz&#39; is<br>
invalid and cannot be interpreted<br>
<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
<br>
<br>
<br>
</span></blockquote>
</blockquote></div><br></div></div></div>

--047d7b5d42fe5b8f710505fd0a96--
