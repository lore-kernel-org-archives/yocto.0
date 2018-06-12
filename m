Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EE87E02C5E; Tue, 12 Jun 2018 11:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00D01E02C11
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:47:53 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id e15-v6so613981iog.1
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 11:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=G8v+uohb6dcV5EMo9cnrhAzh/XQMawxzg8lG2Q1n06Q=;
	b=dsRZrs9E7ZluhvPoYwfF4Ji2bfyJiBKnyN+i2HtmdkbQeUtcX+LWuOJ+0AeeVNTdNV
	pXpHV7SGBtQX9KRmSR8YpU2tdDx50w/e4hcU3kBTy+OjSilIi2gUYH3g1ZuEO5bkIN88
	H9BWvaRRqTF20fu8SQyQsShMX4mEKZPp74zfKKY1Q6A0n0dOVkMg6WlMWoZWVSqPv34t
	JhdSdHXhVDdOGAIZeuQJG63yG27XE+H/oIkaJYxMS7E09F7MK4BbLYjSdBNaYe9PZUq/
	1uqu9sJE3OEGW/nG0k4HIOlcsd2thkoKFgYqAaD/G77u2zPCc88WffyT/z1YGVYKe3/H
	dKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=G8v+uohb6dcV5EMo9cnrhAzh/XQMawxzg8lG2Q1n06Q=;
	b=ffFjFXChtquHRCsB3rc36MEKRbEEhDaTrPVwnQV6guVmE0hcKXxyB0ZXMRzVqvo98h
	WiipunxqM9cTboEGXBGnhwzYogHnRgxykSoa7+QXJ8jk1FLC9AvZ6tYEe7WFTw/82qC9
	HsrVOOvllBATkSg8b1QwWLRSP9jhkGJ8gtZEDXwDDTJ4jjryXFiUDWci0UxjDkq+bI32
	buZMWW6OycqBxVj3D/n9rAwUYRjksYLk141x6eE/T/K/XZMqqTnmQqlUIsocQa9j4kYL
	EoaX9Q58ULFjeZ9+22NfBzT51qw6He4FsWpj8yJzwBA3bZwKQ4h6BCLEG714cYg9c2NF
	wSog==
X-Gm-Message-State: APt69E2hYlXQLMVOEEa2MNqgm9qC4qd/nJsIeLcs0oxi8ks3DQJGiHBF
	wvHQ4zOPC8VnvI8ZAr1E93WnCTyzEpIpUfTwHrI=
X-Google-Smtp-Source: ADUXVKIXj9pR25zx6eVo33bWafRvSPc8GU5wNbeqYxLhiBDBgJCtyHVOQu2Us2k2fG2+mgPbQ4bL1QKm/s0e8uTQDXw=
X-Received: by 2002:a6b:882a:: with SMTP id
	k42-v6mr1649832iod.137.1528829273245; 
	Tue, 12 Jun 2018 11:47:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:8c0a:0:0:0:0:0 with HTTP; Tue, 12 Jun 2018 11:47:52
	-0700 (PDT)
In-Reply-To: <CAKmWj-2NHyF7qKT5vKvVL1KoGEenCQzMPZL4Cyw2BMH_RN3ihw@mail.gmail.com>
References: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
	<CAKmWj-3-=praP1s0047GE_P4D=fSA57TpJe77ZXHSZLZCuy4uw@mail.gmail.com>
	<CAKmWj-2NHyF7qKT5vKvVL1KoGEenCQzMPZL4Cyw2BMH_RN3ihw@mail.gmail.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Tue, 12 Jun 2018 14:47:52 -0400
Message-ID: <CAKmWj-04G9Ar83SmsZo+_U-UZ=AnreREXqjPYf1YUR7eL+Nbkw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Patch for custom imager plugin in wic.
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
X-List-Received-Date: Tue, 12 Jun 2018 18:47:55 -0000
Content-Type: multipart/alternative; boundary="000000000000c10c6c056e764df8"

--000000000000c10c6c056e764df8
Content-Type: text/plain; charset="UTF-8"

Can anybody see this message? lol

On Tue, Jun 5, 2018 at 10:05 AM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> Can someone instruct me on the proper protocol to request a change?
>
> On Wed, May 23, 2018 at 1:37 PM, Paul Knopf <pauldotknopf@gmail.com>
> wrote:
>
>> Can this change be merged into master?
>>
>> On Mon, May 21, 2018 at 5:00 PM, Paul Knopf <pauldotknopf@gmail.com>
>> wrote:
>>
>>> From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep 17 00:00:00 2001
>>> From: Paul Knopf <pauldotknopf@gmail.com>
>>> Date: Mon, 21 May 2018 16:56:51 -0400
>>> Subject: [PATCH] Support for changing the imager used in wic.
>>>
>>> ---
>>>  scripts/lib/wic/engine.py | 2 +-
>>>  scripts/wic               | 1 +
>>>  2 files changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engine.py
>>> index edcfab3..d7c5c11 100644
>>> --- a/scripts/lib/wic/engine.py
>>> +++ b/scripts/lib/wic/engine.py
>>> @@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_dir,
>>> kernel_dir,
>>>      if not os.path.exists(options.outdir):
>>>          os.makedirs(options.outdir)
>>>
>>> -    pname = 'direct'
>>> +    pname = options.imager
>>>      plugin_class = PluginMgr.get_plugins('imager').get(pname)
>>>      if not plugin_class:
>>>          raise WicError('Unknown plugin: %s' % pname)
>>> diff --git a/scripts/wic b/scripts/wic
>>> index 7392bc4..255e524 100755
>>> --- a/scripts/wic
>>> +++ b/scripts/wic
>>> @@ -360,6 +360,7 @@ def wic_init_parser_create(subparser):
>>>      subparser.add_argument("-v", "--vars", dest='vars_dir',
>>>                        help="directory with <image>.env files that store
>>> "
>>>                             "bitbake variables")
>>> +    subparser.add_argument("-i", "--imager", dest="imager",
>>> default="direct", help="the wic imager plugin")
>>>      subparser.add_argument("-D", "--debug", dest="debug",
>>> action="store_true",
>>>                        default=False, help="output debug information")
>>>      return
>>> --
>>> 2.7.4
>>>
>>>
>>
>

--000000000000c10c6c056e764df8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anybody see this message? lol</div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Tue, Jun 5, 2018 at 10:05 AM, Pau=
l Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:pauldotknopf@gmail.com" tar=
get=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"ltr">Can someone instruct me on the proper p=
rotocol to request a change?</div><div class=3D"HOEnZb"><div class=3D"h5"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, May 23, 20=
18 at 1:37 PM, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:pauldotkn=
opf@gmail.com" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Can this change be me=
rged into master?</div><div class=3D"m_8890298167323351978HOEnZb"><div clas=
s=3D"m_8890298167323351978h5"><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Mon, May 21, 2018 at 5:00 PM, Paul Knopf <span dir=3D"ltr">=
&lt;<a href=3D"mailto:pauldotknopf@gmail.com" target=3D"_blank">pauldotknop=
f@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div di=
r=3D"ltr"><div>From 136d6214b6fc2c1118dac5b7f3e029<wbr>ed006fab8a Mon Sep 1=
7 00:00:00 2001</div><div>From: Paul Knopf &lt;<a href=3D"mailto:pauldotkno=
pf@gmail.com" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;</div><div>Da=
te: Mon, 21 May 2018 16:56:51 -0400</div><div>Subject: [PATCH] Support for =
changing the imager used in wic.</div><div><br></div><div>---</div><div>=C2=
=A0scripts/lib/wic/engine.py | 2 +-</div><div>=C2=A0scripts/wic =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 1 +</div><div>=C2=A02 files change=
d, 2 insertions(+), 1 deletion(-)</div><div><br></div><div>diff --git a/scr=
ipts/lib/wic/engine.py b/scripts/lib/wic/engine.py</div><div>index edcfab3.=
.d7c5c11 100644</div><div>--- a/scripts/lib/wic/engine.py</div><div>+++ b/s=
cripts/lib/wic/engine.py</div><div>@@ -191,7 +191,7 @@ def wic_create(wks_f=
ile, rootfs_dir, bootimg_dir, kernel_dir,</div><div>=C2=A0 =C2=A0 =C2=A0if =
not os.path.exists(options.outdir)<wbr>:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0os.makedirs(options.outdir)</div><div>=C2=A0</div><div>- =C2=A0 =
=C2=A0pname =3D &#39;direct&#39;</div><div>+ =C2=A0 =C2=A0pname =3D options=
.imager</div><div>=C2=A0 =C2=A0 =C2=A0plugin_class =3D PluginMgr.get_plugin=
s(&#39;imager&#39;<wbr>).get(pname)</div><div>=C2=A0 =C2=A0 =C2=A0if not pl=
ugin_class:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise WicError(&#39=
;Unknown plugin: %s&#39; % pname)</div><div>diff --git a/scripts/wic b/scri=
pts/wic</div><div>index 7392bc4..255e524 100755</div><div>--- a/scripts/wic=
</div><div>+++ b/scripts/wic</div><div>@@ -360,6 +360,7 @@ def wic_init_par=
ser_create(subpars<wbr>er):</div><div>=C2=A0 =C2=A0 =C2=A0subparser.add_arg=
ument(&quot;-v&quot;, &quot;--vars&quot;, dest=3D&#39;vars_dir&#39;,</div><=
div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0help=3D&quot;directory with &lt;image&gt;.env files that store=
 &quot;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;bitbake variables&quot;)</d=
iv><div>+ =C2=A0 =C2=A0subparser.add_argument(&quot;-i&quot;, &quot;--image=
r&quot;, dest=3D&quot;imager&quot;, default=3D&quot;direct&quot;, help=3D&q=
uot;the wic imager plugin&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0subparser.ad=
d_argument(&quot;-D&quot;, &quot;--debug&quot;, dest=3D&quot;debug&quot;, a=
ction=3D&quot;store_true&quot;,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default=3DFalse, help=
=3D&quot;output debug information&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0retu=
rn</div><span class=3D"m_8890298167323351978m_1527622693881356800HOEnZb"><f=
ont color=3D"#888888"><div>--=C2=A0</div><div>2.7.4</div><div><br></div></f=
ont></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000c10c6c056e764df8--
