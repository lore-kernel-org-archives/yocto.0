Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D7ABE01645; Tue,  5 Jun 2018 07:05:56 -0700 (PDT)
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
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30EEE015B4
	for <yocto@yoctoproject.org>; Tue,  5 Jun 2018 07:05:27 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id p185-v6so3477567itp.4
	for <yocto@yoctoproject.org>; Tue, 05 Jun 2018 07:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=OkZiteholE2EBLlFKBVlJHSkRu6QTVQ2+7+PDW7BG/A=;
	b=n0yV6DFFqdMYo8xXMkio3DBTRV46f5Ak+J4Mh/PurFUgqLbNkiuvFBi6TAl+YcqakH
	ZeZFFvy9qae0CAGkWYeTFir+NWxNynxSXd8leHoE92xVmnPufhddzyukIWLtCeGoisbr
	3BKez0ZwdaYDFuEMjd9P4W+aMSXb4nMIMTF7uGlmVU9kNlLfSk8mG8k6PNUDa4pw5kLI
	bn3P1WlQUjzVOkjj4319Bs8M9GB3fWx5EwVyPcc9dyRcamNPm8vq1XDhf/8IIuUuAJbZ
	iSesANCbcKs7CaGC76ICwWySyOpvsdb8MsbakPSBAwVJ5rrLYkGjswPzTCxN8uoM70zx
	aw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=OkZiteholE2EBLlFKBVlJHSkRu6QTVQ2+7+PDW7BG/A=;
	b=eq7hEhrjOokiA7/9RP6tjwraRkCZKlpDChm1tQslbZV1WYPMQV/5Y1v9QOMATodKk1
	7gOEjQJX11kSLFJBMJXeqUgwXYSTycXyFI2YI7LfKsGEw1QJI1Z56RVJDEgiJa+LEfIJ
	vzrThXid1s9TnEKdHvhii88Y8J6EF80z1cNAYQoMSl/UnbVNK0rgFjqI8oj1+hZGxN7h
	hGKjj5C8HxC2wFBLJQv/6O8fYk59H4I/URqhUbsf/VEmsHSce2PPsRz3sEY99dNjLp0u
	b6rma/aW7z1wprNUSXKpdcRUyB01ovq3Fmd7geVSjWrYZJ1zlZNqMChC6LqBDEeh+h6G
	81AQ==
X-Gm-Message-State: APt69E19JmtoiGqpfGqnFE2R+qyWu4SHJY7BnkKr29BHoC3zM7jWA0nI
	DA9yEpIQG2kgOcFK64KJ9k88GZXZmzR1a8oezV4=
X-Google-Smtp-Source: ADUXVKKOkYtqSA9saurbfvOBR8+QeMxpiEvUXZREIR3mJkUoXARNtlGeXXcnqP0AAUE0jPZK2P6AwphzFB6QEKJ6gM4=
X-Received: by 2002:a24:7650:: with SMTP id
	z77-v6mr18920612itb.113.1528207527012; 
	Tue, 05 Jun 2018 07:05:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:8c0a:0:0:0:0:0 with HTTP;
	Tue, 5 Jun 2018 07:05:26 -0700 (PDT)
In-Reply-To: <CAKmWj-3-=praP1s0047GE_P4D=fSA57TpJe77ZXHSZLZCuy4uw@mail.gmail.com>
References: <CAKmWj-1Uks-O3HhP016_qhtk-a_dhv=39zMkJKdebkuBPhhifQ@mail.gmail.com>
	<CAKmWj-3-=praP1s0047GE_P4D=fSA57TpJe77ZXHSZLZCuy4uw@mail.gmail.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Tue, 5 Jun 2018 10:05:26 -0400
Message-ID: <CAKmWj-2NHyF7qKT5vKvVL1KoGEenCQzMPZL4Cyw2BMH_RN3ihw@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Jun 2018 14:05:56 -0000
Content-Type: multipart/alternative; boundary="000000000000ca6d57056de58a8a"

--000000000000ca6d57056de58a8a
Content-Type: text/plain; charset="UTF-8"

Can someone instruct me on the proper protocol to request a change?

On Wed, May 23, 2018 at 1:37 PM, Paul Knopf <pauldotknopf@gmail.com> wrote:

> Can this change be merged into master?
>
> On Mon, May 21, 2018 at 5:00 PM, Paul Knopf <pauldotknopf@gmail.com>
> wrote:
>
>> From 136d6214b6fc2c1118dac5b7f3e029ed006fab8a Mon Sep 17 00:00:00 2001
>> From: Paul Knopf <pauldotknopf@gmail.com>
>> Date: Mon, 21 May 2018 16:56:51 -0400
>> Subject: [PATCH] Support for changing the imager used in wic.
>>
>> ---
>>  scripts/lib/wic/engine.py | 2 +-
>>  scripts/wic               | 1 +
>>  2 files changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/scripts/lib/wic/engine.py b/scripts/lib/wic/engine.py
>> index edcfab3..d7c5c11 100644
>> --- a/scripts/lib/wic/engine.py
>> +++ b/scripts/lib/wic/engine.py
>> @@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_dir,
>> kernel_dir,
>>      if not os.path.exists(options.outdir):
>>          os.makedirs(options.outdir)
>>
>> -    pname = 'direct'
>> +    pname = options.imager
>>      plugin_class = PluginMgr.get_plugins('imager').get(pname)
>>      if not plugin_class:
>>          raise WicError('Unknown plugin: %s' % pname)
>> diff --git a/scripts/wic b/scripts/wic
>> index 7392bc4..255e524 100755
>> --- a/scripts/wic
>> +++ b/scripts/wic
>> @@ -360,6 +360,7 @@ def wic_init_parser_create(subparser):
>>      subparser.add_argument("-v", "--vars", dest='vars_dir',
>>                        help="directory with <image>.env files that store "
>>                             "bitbake variables")
>> +    subparser.add_argument("-i", "--imager", dest="imager",
>> default="direct", help="the wic imager plugin")
>>      subparser.add_argument("-D", "--debug", dest="debug",
>> action="store_true",
>>                        default=False, help="output debug information")
>>      return
>> --
>> 2.7.4
>>
>>
>

--000000000000ca6d57056de58a8a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can someone instruct me on the proper protocol to request =
a change?</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Wed, May 23, 2018 at 1:37 PM, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"=
mailto:pauldotknopf@gmail.com" target=3D"_blank">pauldotknopf@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Can t=
his change be merged into master?</div><div class=3D"HOEnZb"><div class=3D"=
h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, May 2=
1, 2018 at 5:00 PM, Paul Knopf <span dir=3D"ltr">&lt;<a href=3D"mailto:paul=
dotknopf@gmail.com" target=3D"_blank">pauldotknopf@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>From 136d62=
14b6fc2c1118dac5b7f3e029<wbr>ed006fab8a Mon Sep 17 00:00:00 2001</div><div>=
From: Paul Knopf &lt;<a href=3D"mailto:pauldotknopf@gmail.com" target=3D"_b=
lank">pauldotknopf@gmail.com</a>&gt;</div><div>Date: Mon, 21 May 2018 16:56=
:51 -0400</div><div>Subject: [PATCH] Support for changing the imager used i=
n wic.</div><div><br></div><div>---</div><div>=C2=A0scripts/lib/wic/engine.=
py | 2 +-</div><div>=C2=A0scripts/wic =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 1 +</div><div>=C2=A02 files changed, 2 insertions(+), 1 del=
etion(-)</div><div><br></div><div>diff --git a/scripts/lib/wic/engine.py b/=
scripts/lib/wic/engine.py</div><div>index edcfab3..d7c5c11 100644</div><div=
>--- a/scripts/lib/wic/engine.py</div><div>+++ b/scripts/lib/wic/engine.py<=
/div><div>@@ -191,7 +191,7 @@ def wic_create(wks_file, rootfs_dir, bootimg_=
dir, kernel_dir,</div><div>=C2=A0 =C2=A0 =C2=A0if not os.path.exists(option=
s.outdir)<wbr>:</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0os.makedirs(opt=
ions.outdir)</div><div>=C2=A0</div><div>- =C2=A0 =C2=A0pname =3D &#39;direc=
t&#39;</div><div>+ =C2=A0 =C2=A0pname =3D options.imager</div><div>=C2=A0 =
=C2=A0 =C2=A0plugin_class =3D PluginMgr.get_plugins(&#39;imager&#39;<wbr>).=
get(pname)</div><div>=C2=A0 =C2=A0 =C2=A0if not plugin_class:</div><div>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise WicError(&#39;Unknown plugin: %s&#39; =
% pname)</div><div>diff --git a/scripts/wic b/scripts/wic</div><div>index 7=
392bc4..255e524 100755</div><div>--- a/scripts/wic</div><div>+++ b/scripts/=
wic</div><div>@@ -360,6 +360,7 @@ def wic_init_parser_create(subpars<wbr>er=
):</div><div>=C2=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-v&quot;, &qu=
ot;--vars&quot;, dest=3D&#39;vars_dir&#39;,</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help=3D&quot;=
directory with &lt;image&gt;.env files that store &quot;</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;bitbake variables&quot;)</div><div>+ =C2=A0 =C2=A0s=
ubparser.add_argument(&quot;-i&quot;, &quot;--imager&quot;, dest=3D&quot;im=
ager&quot;, default=3D&quot;direct&quot;, help=3D&quot;the wic imager plugi=
n&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0subparser.add_argument(&quot;-D&quot=
;, &quot;--debug&quot;, dest=3D&quot;debug&quot;, action=3D&quot;store_true=
&quot;,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0default=3DFalse, help=3D&quot;output debug infor=
mation&quot;)</div><div>=C2=A0 =C2=A0 =C2=A0return</div><span class=3D"m_15=
27622693881356800HOEnZb"><font color=3D"#888888"><div>--=C2=A0</div><div>2.=
7.4</div><div><br></div></font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000ca6d57056de58a8a--
