Return-Path: <eliya.mir@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9943E00D39; Mon,  9 Oct 2017 04:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eliya.mir[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2DAEE00CD3
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 04:16:23 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id l196so26926041lfl.1
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 04:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bzzej3+aZFap1OcZ/k8/yKLzAbqIZSCQZG5RmUjL4nU=;
	b=N0LS6rMZqHCubkTzU/spjr8C3DGz+ca909y4b5v3j/U6cnXzGA5JXMDqUWjfJEc3Gf
	WOHotPmFn6eJFHa0tdlmIr4jR3ONMvDJP1bmPkEGBuw4ALOGvLtdaz7DffP9c4pVpSFB
	l/e1tIsZsWU+e1lO+ighyxjiujL5vU0P6rJEnbOz1ib/wjU0aB316yeBIWgA9btGEQmu
	bzfeS+/+Dmx0nWDc4NITmIgMYo3f/Z8Ima4VAi6VzhP+2pm92ivlVjwqpCEghNZQ8bat
	KorZYrCtCBBi0+5qFpAHlb7bU224YdZRLghrN2lUE/DDzCkY2AlBqCZB0v+FBsjE4OqK
	Tv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bzzej3+aZFap1OcZ/k8/yKLzAbqIZSCQZG5RmUjL4nU=;
	b=F+0sQi20902RNshTnHnl0XsSMzmHwXwuNdK22JtvK6IsoGdwYTloC7pR0pJ51xMG4X
	KArH16MaE1PPkDC1wLYBA8ng+OhHRwB/PYBWWRAHTcS6oklMYTyE3YqpE3ohT7BuYFpK
	ij4h/kBFFUJeX23wa4NrXYMSpzHA2K9Iv3gJxHGAWVrgzprZdLzSN9urK75OFnrfy340
	31H4LUF/8ndjQnJPn6TNwRM+3zVZKtY3qtLwFXk2fjhDZhHl/ZwmbS9BltDNSNSG9Px5
	3Ar3lP26Vmwx11naGeuPA8A5SDocdaWCln7vKSe1XTUM1qSfueHXkExn3CnheZCYo/lz
	1I4Q==
X-Gm-Message-State: AMCzsaUaAvtXy15iLXMVRWTU3nzniZJ6RB51CYrV4IUWVICLxJhHQ421
	r7r2/ZQeX1JzUVybjKukAXCKiy8yFC+xbiE98OA=
X-Google-Smtp-Source: AOwi7QDFjFmIoKf0F6eZNsv2sM6Fk/HR/LH0jbcRSNx9xs8K4UFI4jXxTsvcIejsX+yBzcq3K4XM9XHAYGSAl5cZX00=
X-Received: by 10.25.40.196 with SMTP id o187mr3434085lfo.145.1507547782145;
	Mon, 09 Oct 2017 04:16:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.41.17 with HTTP; Mon, 9 Oct 2017 04:16:21 -0700 (PDT)
In-Reply-To: <CAJTo0LY3Tb_gYCz9416jAwahcCUKCvvBuPYjFU1bMS3ZYv60tg@mail.gmail.com>
References: <CADS9r7nue8ozf+ma9xYUeNTz+LMAE8nVCzuoRz0ygfMZCM3nPg@mail.gmail.com>
	<CAJTo0Lb=_MUNmD2d3oPy=HtuNw-0d-LJ9vo4atA=eHEOZuxwpA@mail.gmail.com>
	<CADS9r7nVjSiZ-UNZ-2CFt0M8i7Yj3-skt+DsPc8n0mJ7kYKwaA@mail.gmail.com>
	<CAJTo0LZfoa1yA9kcsC4rnBMmOfB0QB1fU3eqVUg+EayTAwjZVQ@mail.gmail.com>
	<CADS9r7=vrThVxzq5uvy19C4eH+mGvG52V9cz3FwKvvBeOdkbLQ@mail.gmail.com>
	<CAJTo0Lb2p7BwAkheq1Cuh2kkfjNuFoi7Dhj7_opLGa5Th-VaXA@mail.gmail.com>
	<CADS9r7=SVFvLh_ato9mR74Jr_BMUMrqAOAd+5vsDk2GMXCfaOw@mail.gmail.com>
	<CAJTo0La6bfnz28+LWCHnVixYiQ4muFOQ_BhvBxVghKkKB6N1sg@mail.gmail.com>
	<CADS9r7mnOeMHoQfVxv4D08-_t1rcPSP8-1RjufNW9bqeRaoevQ@mail.gmail.com>
	<CAJTo0LY3Tb_gYCz9416jAwahcCUKCvvBuPYjFU1bMS3ZYv60tg@mail.gmail.com>
From: "eliya.mir@gmail.com" <eliya.mir@gmail.com>
Date: Mon, 9 Oct 2017 14:16:21 +0300
Message-ID: <CADS9r7neXWXnJ9jgKuYbheQuaH57VJ0Dwx=X8ZBhtxMZVDMw1Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailman-Approved-At: Tue, 10 Oct 2017 11:53:50 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pkg-config search directories
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
X-List-Received-Date: Mon, 09 Oct 2017 11:16:24 -0000
Content-Type: multipart/alternative; boundary="001a114051e2096af7055b1b5235"

--001a114051e2096af7055b1b5235
Content-Type: text/plain; charset="UTF-8"

Hi,
Yes its the same problem, just wanted to be more specific.
I have added mesa to DEPENDS but still same result.
I have also tried running bitbake mesa and it is successful so pkgconfig
with mesa works.

Yes, I am using glmark2 recipe from meta-oe.
perhaps you can recommend a better recipe then what im using

Thanks


On Mon, Oct 9, 2017 at 1:16 PM, Burton, Ross <ross.burton@intel.com> wrote:

> Is this the same problem? You dont want to search the host for libraries
> that you want on the target.  Just add mesa to DEPENDS and pkgconfig will
> find the GL headers in the sysroot.
>
> Are you using the glmark2 recipe from meta-oe?
>
> Ross
>
> On 8 October 2017 at 16:00, eliya.mir@gmail.com <eliya.mir@gmail.com>
> wrote:
>
>> Hi Ross,
>> I am still trying to configure pkg-config.
>>
>> Running bitbake glmark2 recipe results with an error :
>> Checking for 'gl'                        : not found.
>>
>> looking into the log file :
>> Checking for 'gl'
>> ['/home/wzbwjj/vpm/GR_Yocto/build/tmp/sysroots/x86_64-linux/usr/bin/pkg-config',
>> 'gl', '--cflags', '--libs']
>> err: Package gl was not found in the pkg-config search path.
>> Perhaps you should add the directory containing `gl.pc'
>> to the PKG_CONFIG_PATH environment variable
>> No package 'gl' found
>>
>> not found
>> from /home/wzbwjj/vpm/GR_Yocto/build/tmp/work/corei7-64-poky-linu
>> x/glmark2/2014.03+AUTOINC+fa71af2dfa-r0/git: The configuration failed
>>
>>
>> Thanks!
>>
>>
>>
>> On Tue, Oct 3, 2017 at 6:40 PM, Burton, Ross <ross.burton@intel.com>
>> wrote:
>>
>>> On 3 October 2017 at 16:36, eliya.mir@gmail.com <eliya.mir@gmail.com>
>>> wrote:
>>>
>>>> Thanks Ross,
>>>> That is the issue : default pkg-config does not search host paths - How
>>>> to edit its search paths ?
>>>>
>>>
>>> "If you *really* want to link against host binaries and not building
>>> your own native recipes for it then see qemu.inc for an example of how to
>>> steal the host pkg-config path and use it at configure time."
>>>
>>> Ross
>>>
>>
>>
>

--001a114051e2096af7055b1b5235
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<br>Yes its the same problem, just wanted to be m=
ore specific.<div>I have added mesa to DEPENDS but still same result.</div>=
<div>I have also tried running bitbake mesa and it is successful so pkgconf=
ig with mesa works.</div><div><br></div><div>Yes, I am using=C2=A0<span sty=
le=3D"font-size:12.8px">glmark2 recipe from meta-oe.=C2=A0</span></div><div=
><span style=3D"font-size:12.8px">perhaps you can recommend a better recipe=
 then what im using</span></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px">Thanks=C2=A0</span></div>=
<div><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Oct 9, 2017 at 1:16 PM, Burton, Ross <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_extra">Is this the same problem? You dont want to searc=
h the host for libraries that you want on the target.=C2=A0 Just add mesa t=
o DEPENDS and pkgconfig will find the GL headers in the sysroot.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Are you using th=
e glmark2 recipe from meta-oe?</div><span class=3D"HOEnZb"><font color=3D"#=
888888"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ros=
s</div></font></span><div><div class=3D"h5"><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 8 October 20=
17 at 16:00, <a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya=
.mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.=
com" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr">Hi Ross,=C2=A0<br>I am still tryin=
g to configure pkg-config.=C2=A0<div><br></div><div>Running bitbake glmark2=
 recipe results with an error :=C2=A0=C2=A0</div><div>Checking for &#39;gl&=
#39;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 : not found.</div><div><br></div><div>looking into the log fi=
le :=C2=A0</div><div><div>Checking for &#39;gl&#39;</div><div>[&#39;/home/w=
zbwjj/vpm/GR_Yocto/bu<wbr>ild/tmp/sysroots/x86_64-linux/<wbr>usr/bin/pkg-co=
nfig&#39;, &#39;gl&#39;, &#39;--cflags&#39;, &#39;--libs&#39;]</div><div>er=
r: Package gl was not found in the pkg-config search path.</div><div>Perhap=
s you should add the directory containing `gl.pc&#39;</div><div>to the PKG_=
CONFIG_PATH environment variable</div><div>No package &#39;gl&#39; found</d=
iv><div><br></div><div>not found</div><div>from /home/wzbwjj/vpm/GR_Yocto/b=
uil<wbr>d/tmp/work/corei7-64-poky-linu<wbr>x/glmark2/2014.03+AUTOINC+fa71<w=
br>af2dfa-r0/git: The configuration failed</div></div><div><br></div><div><=
br></div><div>Thanks!</div><div><br></div><div><br></div></div><div class=
=3D"m_-6004814298723131457HOEnZb"><div class=3D"m_-6004814298723131457h5"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Oct 3, 201=
7 at 6:40 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.bur=
ton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span>On 3 October 201=
7 at 16:36, <a href=3D"mailto:eliya.mir@gmail.com" target=3D"_blank">eliya.=
mir@gmail.com</a> <span dir=3D"ltr">&lt;<a href=3D"mailto:eliya.mir@gmail.c=
om" target=3D"_blank">eliya.mir@gmail.com</a>&gt;</span> wrote:<br></span><=
div class=3D"gmail_extra"><div class=3D"gmail_quote"><span><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;b=
order-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Thanks Ross,=C2=A0<br><div>That is the issue : default pk=
g-config does not search host paths - How to edit its search paths ?=C2=A0<=
/div></div></blockquote><div><br></div></span><span><div>&quot;<span style=
=3D"font-size:12.800000190734863px">If you *really* want to link against ho=
st binaries and not building your own native recipes for it then see qemu.i=
nc for an example of how to steal the host pkg-config path and use it at co=
nfigure time.&quot;</span></div><div><span style=3D"font-size:12.8000001907=
34863px"><br></span></div><div><span style=3D"font-size:12.800000190734863p=
x">Ross</span></div></span></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div></div></div></div>
</blockquote></div><br></div>

--001a114051e2096af7055b1b5235--
