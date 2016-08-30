Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FF7E00D1E; Tue, 30 Aug 2016 10:08:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CFB8E00D15
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 10:08:02 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id o80so4051512wme.0
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 10:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XQ2pxNDGpYThBQUGrhMB0M2LkY0RcdvQO4ABLIDuChc=;
	b=h2MX5RTIqB3SUx8FKnGJYJLliJpAnmmrSfgo3dOLjVDDI0BapGEr7+xej2j+h8MHvM
	0x0CYI9trNVCY3EGGRUg+j/wQ6/HOREufpcd7XgKKOKw9auv0esY/ArKVqJy4m46g37D
	jaEZSnkpqqHMaF6YGyT6KKbnxsezjfRxj4sPBrGdrr+JShSaXaj7Ty8XCEN470Awlf0J
	YSsLdtjr2WWUJu4E4liRSKhHijQ5C4cGulmSBqwTnq+4HGojAE+WMAqstB0CDPorKNx+
	IDOAlevwgdqBQiTP9b+MRt+B+pniRoh98H/60PlnAyJWfB7qAZLEdibFNFpyEemizpww
	kzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XQ2pxNDGpYThBQUGrhMB0M2LkY0RcdvQO4ABLIDuChc=;
	b=Mqk4ZYRVK5V/+jMXVAOixo1wAJfgLmus4vQfWGwO4Vaq4rTKaFYSHa3MsLmqImOw15
	I2wHY9r29r1YM9Fdu0pECp547THxYYO9T789XHVqlZJVxwBZmYuyzG+Qz+ZPdZF4SZWF
	NC7HRuPFXXM9ak9NZNhF50Y+lXhrFu97gOg9Kpt6+kVBqoD5jxeB09r7gficQKtyux8+
	ZUH6jiHAwutTnQbM/6vdQ79dadKtxBij4BlvRXYb2hkmDU6Wk9Sfcb5v9mS+xMAessCn
	Cq6s8UB62Af4DSiF1vdVPdZKpX5E/xjcfWUiVluoTBInl8+N+FRXpzRiHgIxt8ZCen62
	Yoyg==
X-Gm-Message-State: AE9vXwNzyjwMgRNjKcSISif6pvHLs46kAHA+GgjxHaJor64hqadybmxtM7o6zNo060k5eqB/BGpqXpEkruLPAw==
X-Received: by 10.28.32.77 with SMTP id g74mr4657752wmg.45.1472576881293; Tue,
	30 Aug 2016 10:08:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.1.150 with HTTP; Tue, 30 Aug 2016 10:07:59 -0700 (PDT)
Received: by 10.28.1.150 with HTTP; Tue, 30 Aug 2016 10:07:59 -0700 (PDT)
In-Reply-To: <1472571975-24370-1-git-send-email-anibal.limon@linux.intel.com>
References: <1472571975-24370-1-git-send-email-anibal.limon@linux.intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Tue, 30 Aug 2016 10:07:59 -0700
Message-ID: <CA+n--H9iWjzPDkD6oe9AOr86Ghm2qi65zE-dnUbvoSHBg3W5zw@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-autobuilder] nightly-qa-systemd.conf: Add create_eventlog property
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
X-List-Received-Date: Tue, 30 Aug 2016 17:08:04 -0000
Content-Type: multipart/alternative; boundary=001a113d7b2eea35b3053b4d052e

--001a113d7b2eea35b3053b4d052e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Aug 30, 2016 8:46 AM, "An=C3=ADbal Lim=C3=B3n" <anibal.limon@linux.intel=
.com>
wrote:
>
> This buildset also needs the create_eventlog property for only
> enable the toaster event log creation when required. See rev [1].
>
> [1] 0b083509beaf7421f1dde4b679a934741ac4a3bc
>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
Acked-by: Bill Randle <billr@neocat.org>

> ---
>  buildset-config.controller/nightly-qa-systemd.conf | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/buildset-config.controller/nightly-qa-systemd.conf
b/buildset-config.controller/nightly-qa-systemd.conf
> index f95021dc..662caa6 100644
> --- a/buildset-config.controller/nightly-qa-systemd.conf
> +++ b/buildset-config.controller/nightly-qa-systemd.conf
> @@ -4,6 +4,10 @@ repos: [{'poky':
>              {'repourl':'git://git.yoctoproject.org/poky',
>               'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp',
'yocto':'meta-yocto', 'poky':'meta-poky'},
>               'branch':'master'}}]
> +props: [{'create_eventlog':{'prop_type':'ChoiceStringParameter',
> +                       'choices': ['False', 'True'],
> +                       'name': 'create_eventlog',
> +                       'label':'<hr>Create Toaster event log as part of
image creation?:'}}]
>  steps: [{'SetDest':{}},
>          {'CheckOutLayers': {}},
>          {'RunPreamble': {}},
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--001a113d7b2eea35b3053b4d052e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Aug 30, 2016 8:46 AM, &quot;An=C3=ADbal Lim=C3=B3n&quot; =
&lt;<a href=3D"mailto:anibal.limon@linux.intel.com">anibal.limon@linux.inte=
l.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This buildset also needs the create_eventlog property for only<br>
&gt; enable the toaster event log creation when required. See rev [1].<br>
&gt;<br>
&gt; [1] 0b083509beaf7421f1dde4b679a934741ac4a3bc<br>
&gt;<br>
&gt; Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.lim=
on@linux.intel.com">anibal.limon@linux.intel.com</a>&gt;<br>
Acked-by: Bill Randle &lt;<a href=3D"mailto:billr@neocat.org">billr@neocat.=
org</a>&gt;</p>
<p dir=3D"ltr">&gt; ---<br>
&gt; =C2=A0buildset-config.controller/nightly-qa-systemd.conf | 4 ++++<br>
&gt; =C2=A01 file changed, 4 insertions(+)<br>
&gt;<br>
&gt; diff --git a/buildset-config.controller/nightly-qa-systemd.conf b/buil=
dset-config.controller/nightly-qa-systemd.conf<br>
&gt; index f95021dc..662caa6 100644<br>
&gt; --- a/buildset-config.controller/nightly-qa-systemd.conf<br>
&gt; +++ b/buildset-config.controller/nightly-qa-systemd.conf<br>
&gt; @@ -4,6 +4,10 @@ repos: [{&#39;poky&#39;:<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;repourl&#39;:&#3=
9;git://<a href=3D"http://git.yoctoproject.org/poky">git.yoctoproject.org/p=
oky</a>&#39;,<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;layerversion&#39=
;:{&#39;core&#39;:&#39;meta&#39;, &#39;yoctobsp&#39;:&#39;meta-yocto-bsp&#3=
9;, &#39;yocto&#39;:&#39;meta-yocto&#39;, &#39;poky&#39;:&#39;meta-poky&#39=
;},<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;branch&#39;:&#39=
;master&#39;}}]<br>
&gt; +props: [{&#39;create_eventlog&#39;:{&#39;prop_type&#39;:&#39;ChoiceSt=
ringParameter&#39;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0&#39;choices&#39;: [&#39;False&#39;, &#39;True&#39;],<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0&#39;name&#39;: &#39;create_eventlog&#39;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0&#39;label&#39;:&#39;&lt;hr&gt;Create Toaster event log as pa=
rt of image creation?:&#39;}}]<br>
&gt; =C2=A0steps: [{&#39;SetDest&#39;:{}},<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;CheckOutLayers&#39;: {}},<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0{&#39;RunPreamble&#39;: {}},<br>
&gt; --<br>
&gt; 2.1.4<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br></p>

--001a113d7b2eea35b3053b4d052e--
