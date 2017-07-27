Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 642D4E00C69; Wed, 26 Jul 2017 17:08:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C374E00C60
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 17:08:44 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id v11so14790657oif.1
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 17:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eCGZZS6DbObUWtJ65F3dYhJ3tY7mwLY7X5ClzRcg2yg=;
	b=Uhql0LfzrWuJi1FS5CdnZfGNv9w+eLEFx2Ui1NqnGTQGycK9M919a2bMDrdaCgcdjL
	rsFRm9NKj8h3gNnHtvq38mwK14rkOMZjT3Xw3kUy7kbvbJqJBurRaslDdutn+L/AN7p6
	Su4Y3aRjNjDpzBfP6QHSaNuxSy6n+5VEApJH/2131jcC1ZBnXHohgeK1jeq4QNujW6mD
	TvDufcdnNIerazssc/WbQCHG412LvjVgf7k57J+mAhMyp15Uk4Qe9Yn/Ueraty26XHW4
	kaVa9hsqepTvoUuH2TknzNKzjQCBUIh3lCsAsMLh8cNqG41Mgl0fThuwxxnYaQwHvg8p
	2hUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eCGZZS6DbObUWtJ65F3dYhJ3tY7mwLY7X5ClzRcg2yg=;
	b=gqFgjbGBwstW7sCNiP0gOf/rPHz3okdeJY7uRsDPxd5+QE1tHbeZJsLuE0+Kf9IyDt
	MnKlUsPV/LuTUi4rE80CBmqOG0wI0FBQTWUBtGlTnAc3hdv2jXKuGRxlZe2pK89oQfe0
	gKZYIsaJaQuWxBPdGsTqQHugMPplIDpuHAOPgB8K3TxcFfMqwXVGq7+qL/8lfH8f1ZaV
	El0+5itJOJVd67otnC5zCVOpOr7kBsXGF2ZhNZkZD27KDNkkZct83BWhUHluz5UDG+cA
	5R+vU/MxlN7CKDH0f1luxNhBtbQY01nFDY4xypjG32xaDa4cJqfqQQLWCzGTRMrM760G
	/BzA==
X-Gm-Message-State: AIVw112caK35Aw9YmZHZSEoG13hDNY5tEjhEam8zhx1Fjn3pLt53USiO
	4DAleGfDk3bnilcTzxKUBSLqhiiWkw==
X-Received: by 10.202.106.9 with SMTP id f9mr2304697oic.191.1501114124105;
	Wed, 26 Jul 2017 17:08:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.48.17 with HTTP; Wed, 26 Jul 2017 17:08:42 -0700 (PDT)
Received: by 10.74.48.17 with HTTP; Wed, 26 Jul 2017 17:08:42 -0700 (PDT)
In-Reply-To: <515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
	<118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
	<515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Thu, 27 Jul 2017 08:08:42 +0800
Message-ID: <CAByQQ_pBh0RLbsk8f+-nHD_OZ2BnKF59R9z_EdntX9HfOXDUVg@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Thu, 27 Jul 2017 00:08:46 -0000
Content-Type: multipart/alternative; boundary="001a114037ba227f0b0555415efe"

--001a114037ba227f0b0555415efe
Content-Type: text/plain; charset="UTF-8"

Dear Yocto Team Member,

The cluster is using Ubuntu.
I haven't checked all the packages on the other computer. I will.

My goal is getting more hardrive space and compiling speed.

How can I relate bitbake with mpicc or other compilers needed by yocto
(arm-linux-gcc, gcc, etc)?

I have tested a small code with mpicc and the cluster do the job.

Thanks for the attention.

On Jul 27, 2017 3:23 AM, "Randy MacLeod" <randy.macleod@windriver.com>
wrote:
>
> On 2017-07-26 02:09 AM, Riko Ho wrote:
>>
>> How can we do that ?
>>
>> bitbake in which node ? I don't understand ?
>>
>>
>> On 26/07/17 13:57, Josef Holzmayr wrote:
>>>
>>> Hi
>>>
>>> On 26.07.2017 05:12, Riko Ho wrote:
>>>>
>>>> Does anyone know on how to run poky on mpich cluster ?
>
>
> That's a rather ambiguous question.
>
> What OS/Distro is the mpich cluster running?
> Have you installed the packages that are required on the host:
>    see: "The Build Host Packages" here:
>
>
http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html
>
> What do you hope to achieve using bitbake?
>
>
>>>
>>> As far as I can see, MPICH is a userland library, basically. So it
would be the other way round, you could probably run a mpich application on
a number of nodes that run some OE/Poky thing.
>>>
>>> Greetz
>
>
> There is an mpich recipe here:
> http://layers.openembedded.org/layerindex/recipe/33348/
>
> but again, it's not clear what your ultimate goal is.
>
> ../Randy
>
>>
>> --
>> *
>>
>>
>> /*******/
>> Sent by Ubuntu LTS 16.04,
>> Kind regards,
>> Riko Ho
>> /*******/
>>
>> *
>>
>>
>
>
> --
> # Randy MacLeod. SMTS, Linux, Wind River
> Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON,
Canada, K2K 2W5

--001a114037ba227f0b0555415efe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Dear Yocto Team Member,</p>
<p dir=3D"ltr">The cluster is using Ubuntu.<br>
I haven&#39;t checked all the packages on the other computer. I will.</p>
<p dir=3D"ltr">My goal is getting more hardrive space and compiling speed.<=
/p>
<p dir=3D"ltr">How can I relate bitbake with mpicc or other compilers neede=
d by yocto (arm-linux-gcc, gcc, etc)?</p>
<p dir=3D"ltr">I have tested a small code with mpicc and the cluster do the=
 job.</p>
<p dir=3D"ltr">Thanks for the attention.</p>
<p dir=3D"ltr">On Jul 27, 2017 3:23 AM, &quot;Randy MacLeod&quot; &lt;<a hr=
ef=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>&g=
t; wrote:<br>
&gt;<br>
&gt; On 2017-07-26 02:09 AM, Riko Ho wrote:<br>
&gt;&gt;<br>
&gt;&gt; How can we do that ?<br>
&gt;&gt;<br>
&gt;&gt; bitbake in which node ? I don&#39;t understand ?<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 26/07/17 13:57, Josef Holzmayr wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hi<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 26.07.2017 05:12, Riko Ho wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Does anyone know on how to run poky on mpich cluster ?<br>
&gt;<br>
&gt;<br>
&gt; That&#39;s a rather ambiguous question.<br>
&gt;<br>
&gt; What OS/Distro is the mpich cluster running?<br>
&gt; Have you installed the packages that are required on the host:<br>
&gt; =C2=A0 =C2=A0see: &quot;The Build Host Packages&quot; here:<br>
&gt;<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto=
-project-qs.html">http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yoc=
to-project-qs.html</a><br>
&gt;<br>
&gt; What do you hope to achieve using bitbake?<br>
&gt;<br>
&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As far as I can see, MPICH is a userland library, basically. S=
o it would be the other way round, you could probably run a mpich applicati=
on on a number of nodes that run some OE/Poky thing.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Greetz<br>
&gt;<br>
&gt;<br>
&gt; There is an mpich recipe here:<br>
&gt; <a href=3D"http://layers.openembedded.org/layerindex/recipe/33348/">ht=
tp://layers.openembedded.org/layerindex/recipe/33348/</a><br>
&gt;<br>
&gt; but again, it&#39;s not clear what your ultimate goal is.<br>
&gt;<br>
&gt; ../Randy<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; -- <br>
&gt;&gt; *<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; /*******/<br>
&gt;&gt; Sent by Ubuntu LTS 16.04,<br>
&gt;&gt; Kind regards,<br>
&gt;&gt; Riko Ho<br>
&gt;&gt; /*******/<br>
&gt;&gt;<br>
&gt;&gt; *<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; # Randy MacLeod. SMTS, Linux, Wind River<br>
&gt; Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, Can=
ada, K2K 2W5<br>
</p>

--001a114037ba227f0b0555415efe--
