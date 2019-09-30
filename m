Return-Path: <droman@ifae.es>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17705E0082E; Mon, 30 Sep 2019 03:42:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44F2AE00805
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 03:42:31 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id r17so13828545wme.0
	for <yocto@yoctoproject.org>; Mon, 30 Sep 2019 03:42:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ifae-es.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language;
	bh=70HyENObi3Lrv6WpW9rgRLfRNZco+1ZIZRes7s04E8Q=;
	b=BqlQ5Yk87O4GnW5feSxA7OIyv2oaHe0ZBBFVS4FIry3t45PwAFE4BCFdAoLO7fFwP5
	nFP3zHBIhzekKJDUv7hdL64DBmSVsADtRLz2SvNQD11r4QG45zAq+eKQsMBwG+DAauZ8
	u4pAuIjbekbUW4jWCuY53hcNiNtaZ2EoUCuH64v9qRM7kOuzquIeMWJBjZtmKfERPV4Z
	0Qa5IOxgX0FRSkExqyhPdJKnbL9+oMXkZm78WkgfJJe7lQPktvGD9hsCociAh/1YFxb6
	HExuQIWrNw7lUocBfFWXMygNmuzhhohnRwa+gpHmCR7c40akK6YwN+npjY32L5JROrzJ
	PYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=70HyENObi3Lrv6WpW9rgRLfRNZco+1ZIZRes7s04E8Q=;
	b=IO90+k7Q/ezgRPHUtpcKF7elRXxXi5pp4vwwQoW1+ABh1IE8IcEGj9LAZVMb25BthH
	271H3T8wSqDEaWEZdjwAumBs5JHgzJzlO4mM5GuxmyS8lgcqOXisDuIi9sb3W5aRam4z
	lgbd8DYGqQ1+Grxx7M/0lPjE3N/P5i2OqKKWB+K4nanSUKsNrnEryQrcZSvGJiQlqnYd
	yv1HeC5Z1JUrksK9a5VR86pSgc+ppHpC5gCOENjC1+qWKkghY4wR5RrHlnieH3cVGZkj
	vb0CzcFt51hwQMULcAbIwG+joDaohno4KB3ZMMOTnDaQVhVmZWLf3sj6GFRnh/94tXVf
	H15w==
X-Gm-Message-State: APjAAAWgLkyej9PY3kGcixndWAIZpwskJ22//83g2//VMjpTjPt4f9jX
	GDLt1Iz0Yi/ouVem6W/l2gze2XBXqGNxXy1BFnuCJ6F5UAQ4UoKun6yDUr/YYuTs20bxkf81SXC
	XM/ktx5T9pJvcO4tMxNQPetilvVGxBN/cDWvzKxvYacxkfe9sKvpUIP9HgkE=
X-Google-Smtp-Source: APXvYqzP2ftZztTPn1y1Aenb8sCsNgYsFeZnO30aDSj8LQV245wkKHBxXPIHSqWaMtU17RI5nlCenw==
X-Received: by 2002:a7b:c412:: with SMTP id k18mr17103223wmi.149.1569840150063;
	Mon, 30 Sep 2019 03:42:30 -0700 (PDT)
Received: from [172.16.17.131] (nat01.ifae.es. [192.101.162.126])
	by smtp.gmail.com with ESMTPSA id
	a6sm10822453wrr.85.2019.09.30.03.42.29 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 30 Sep 2019 03:42:29 -0700 (PDT)
To: yocto@yoctoproject.org
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
	<aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
	<CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
	<CAMKF1so9RB+wb3TJPYNkFuW_LU4fgW8Hpjhgz0S1+b0QDdwgng@mail.gmail.com>
	<CANge7vUjYRAiGSZY-QGzLTU0p57xcOPS3JryxaO0sLVDSZ-ZZw@mail.gmail.com>
	<CAMKF1spu_eeWWqxJFFGqZ_kdp9BJQSC-1ExHwt9G8ZYPs=k57g@mail.gmail.com>
From: David Roman <droman@ifae.es>
Message-ID: <4976212f-c6b1-acd8-29e0-1c93f289881a@ifae.es>
Date: Mon, 30 Sep 2019 12:42:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1spu_eeWWqxJFFGqZ_kdp9BJQSC-1ExHwt9G8ZYPs=k57g@mail.gmail.com>
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Mon, 30 Sep 2019 10:42:33 -0000
Content-Type: multipart/alternative;
	boundary="------------581198643E7AF06371426444"
Content-Language: en-GB

--------------581198643E7AF06371426444
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

Have this bug been resolved? I'm facing the same error with=20
"warrior:6d2e12e79211b31cdf5ea824fb9a8be54ba9a9eb" and capstone 4.0.1.=20
Although in this case I can not see any include path being used in the logs=
.

On 6/14/18 11:50 PM, Khem Raj wrote:
>
>
> On Thu, Jun 14, 2018 at 1:08 PM Jon Szymaniak <jon.szymaniak@gmail.com=20
> <mailto:jon.szymaniak@gmail.com>> wrote:
>
>     On Thu, Jun 14, 2018 at 14:18 Khem Raj <raj.khem@gmail.com
>     <mailto:raj.khem@gmail.com>> wrote:
>
>         On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak
>         <jon.szymaniak@gmail.com <mailto:jon.szymaniak@gmail.com>> wrote:
>         >
>         > On Thu, Jun 14, 2018 at 11:43 Khem Raj <raj.khem@gmail.com
>         <mailto:raj.khem@gmail.com>> wrote:
>         > > Do you have capstone development headers/libs installed on
>         your build host ?
>         > >
>         >
>         > No, and I understand that's an easy thing to address on the
>         build host.
>         >
>         > However, I don't think this should be necessary build host
>         dependency.
>         > QEMU includes the capstone codebase as a git submodule, so
>         everything
>         > that's needed is there.
>         >
>         > Maybe it's just a matter of tweaking the recipe to set
>         > CMAKE_INSTALL_PREFIX appropriately so that when the build
>         dives down
>         > into the capstone directory, this points to the correct prefix?
>         >
>         > It looks like the inclusion and use of capstone is new, as
>         of the QEMU
>         > version included with sumo. (i.e. This appears not to be the
>         situation
>         > with the version used in rocko and pyro).
>
>         Least intrusive approach would be to disable it if its not
>         something you
>         depend on.
>
>
>     Makes sense, thank you.
>
>     Two workarounds that worked for me were either adding qemu-native
>     to ASSUME_PROVIDED or appending =E2=80=9C--disable-capstone=E2=80=9D =
to qemu=E2=80=99s
>     EXTRA_OECONF.
>
>
> The fact that not everyone sees this issue makes me think that it=20
> might be something in your environment that=E2=80=99s triggering this but=
 if=20
> we disable it then we make the issue irrelevant
>
>
>     I=E2=80=99ll try to follow up with a patch to the recipe in oe-core,
>     unless you suspect that the source of this is merely something on
>     my end.
>
>

--=20
Av=C3=ADs -
Aviso - Legal Notice - (LOPD) - http://legal.ifae.es=20
<http://legal.ifae.es/>

--------------581198643E7AF06371426444
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8=
">
  </head>
  <body>
    <p>Have this bug been resolved? I'm facing the same error with
      "warrior:6d2e12e79211b31cdf5ea824fb9a8be54ba9a9eb" and capstone
      4.0.1. Although in this case I can not see any include path being
      used in the logs.<br>
    </p>
    <div class=3D"moz-cite-prefix">On 6/14/18 11:50 PM, Khem Raj wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMKF1spu_eeWWqxJFFGqZ_kdp9BJQSC-1ExHwt9G8ZYPs=3Dk57g@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
      <div><br>
      </div>
      <div><br>
        <div class=3D"gmail_quote">
          <div dir=3D"auto">On Thu, Jun 14, 2018 at 1:08 PM Jon Szymaniak
            &lt;<a href=3D"mailto:jon.szymaniak@gmail.com"
              moz-do-not-send=3D"true">jon.szymaniak@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div>
              <div>
                <div>
                  <div>On Thu, Jun 14, 2018 at 14:18 Khem Raj &lt;<a
                      href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"
                      moz-do-not-send=3D"true">raj.khem@gmail.com</a>&gt;
                    wrote:<br>
                  </div>
                  <div>
                    <div class=3D"gmail_quote">
                      <blockquote class=3D"gmail_quote" style=3D"margin:0 0
                        0 .8ex;border-left:1px #ccc
                        solid;padding-left:1ex">On Thu, Jun 14, 2018 at
                        9:56 AM Jon Szymaniak &lt;<a
                          href=3D"mailto:jon.szymaniak@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true">jon.sz=
ymaniak@gmail.com</a>&gt;
                        wrote:<br>
                        &gt;<br>
                        &gt; On Thu, Jun 14, 2018 at 11:43 Khem Raj &lt;<a
                          href=3D"mailto:raj.khem@gmail.com"
                          target=3D"_blank" moz-do-not-send=3D"true">raj.kh=
em@gmail.com</a>&gt;
                        wrote:<br>
                        &gt; &gt; Do you have capstone development
                        headers/libs installed on your build host ?<br>
                        &gt; &gt;<br>
                        &gt;<br>
                        &gt; No, and I understand that's an easy thing
                        to address on the build host.<br>
                        &gt;<br>
                        &gt; However, I don't think this should be
                        necessary build host dependency.<br>
                        &gt; QEMU includes the capstone codebase as a
                        git submodule, so everything<br>
                        &gt; that's needed is there.<br>
                        &gt;<br>
                        &gt; Maybe it's just a matter of tweaking the
                        recipe to set<br>
                        &gt; CMAKE_INSTALL_PREFIX appropriately so that
                        when the build dives down<br>
                        &gt; into the capstone directory, this points to
                        the correct prefix?<br>
                        &gt;<br>
                        &gt; It looks like the inclusion and use of
                        capstone is new, as of the QEMU<br>
                        &gt; version included with sumo. (i.e. This
                        appears not to be the situation<br>
                        &gt; with the version used in rocko and pyro).<br>
                        <br>
                        Least intrusive approach would be to disable it
                        if its not something you<br>
                        depend on.</blockquote>
                      <div dir=3D"auto"><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div>
              <div>
                <div>
                  <div>
                    <div class=3D"gmail_quote">
                      <div dir=3D"auto">Makes sense, thank you.=C2=A0</div>
                      <div dir=3D"auto"><br>
                      </div>
                      <div dir=3D"auto">Two workarounds that worked for me
                        were either adding qemu-native to
                        ASSUME_PROVIDED or appending =E2=80=9C<span
style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,=
255)">--disable-capstone=E2=80=9D
                          to qemu=E2=80=99s=C2=A0</span><span
style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,=
255)">EXTRA_OECONF.</span></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
          <div dir=3D"auto"><br>
          </div>
          <div dir=3D"auto">The fact that not everyone sees this issue
            makes me think that it might be something in your
            environment that=E2=80=99s triggering this but if we disable it=
 then
            we make the issue irrelevant=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            <div>
              <div>
                <div>
                  <div>
                    <div class=3D"gmail_quote">
                      <div dir=3D"auto"><span
style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,=
255)"></span></div>
                      <div dir=3D"auto"><span
style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,=
255)"><br>
                        </span></div>
                      <div dir=3D"auto"><span
style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rgb(255,255,=
255)">I=E2=80=99ll
                          try to follow up with a patch to the recipe in
                          oe-core, unless you suspect that the source of
                          this is merely something on my end.</span></div>
                      <div dir=3D"auto"><br>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

<br>
<span><font style=3D"font-family:arial,helvetica,sans-serif" size=3D"2"><sp=
an lang=3D"ca-ES"><span style=3D"font-family:courier new,monospace">Av=C3=
=ADs -
Aviso - Legal Notice - (LOPD)</span> -<span style=3D"font-family:courier ne=
w,monospace"> </span><a style=3D"font-family:courier new,monospace" href=3D=
"http://legal.ifae.es/" target=3D"_blank">http://legal.ifae.es</a></span></=
font></span>

--------------581198643E7AF06371426444--
