Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66FADE00CD8; Wed,  8 Jun 2016 02:20:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 921D7E00927
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 02:20:24 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id n184so172098223wmn.1
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2016 02:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=js+G1zZviQL66hrYfLXbj+oD4daJzY/81JISlphK6a4=;
	b=Hb1ZKwR26I7YjVDmGWqcXmd1MVm5qAIVE35nrNcjgVFm69rd86XlBs0XmQmznEgvbk
	K/70imnre8jfaZkGu+tjvXjXM/IER0LfW7R9i4L8/KRjoYrPRzO1hY5W71LFBmlaQfWa
	OKsSMVZQ3cluJtSoOD6Rb9176BknfZ/Zm0OOWyrluxp7UrnqceC1nIBE/LrGdsGNbAD7
	ze1kTB9HX31FUmsyYhAHHlaaN/ABU76T+lolp/LNeosy7iQ4ypm/TgMWeizSoKtzhMS+
	QHjmbnvmKOlgLURpLwKg9XuKQToSfUpeolne5MhZy963LboyFRzsNbP5dp5+dumxnTMt
	QR3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=js+G1zZviQL66hrYfLXbj+oD4daJzY/81JISlphK6a4=;
	b=hwNOAPvSkQKvTPlfjStceG1nH+hgasi/n6f1RGMjO1a1ZnUJS/Xv02nWQClNKYVufJ
	MDEBIA/8QhlIXAOzI0uZ+V10SYU+UdHHRnqq3/ZrdUOhB1WQVloZvCITdKAne9aq1GWl
	BCmxSUpidgZ6eemSVJ5z8LIrU5/JgW7yk5TRgM8+zQo01DO072YR73NsZopRw1q5xM0v
	SEFtkh6IvX/Y53up12naKcI84GPoPNOlWvzCxNZDSygVzF8Tyu19xOCc5lKXmkIVRJaZ
	sGUqb+02dgPzGpLQfDUuKPZ+442nuTD7IrlltduEi+kjCzcg/n00Xq/eiX39jGxowyq6
	+pIA==
X-Gm-Message-State: ALyK8tJ+2CT5p9zav3ujyBgXG7YPqmatHkvtgxPXH7rt1FHpzDqld4jUyeEQtZcDw7MA6g==
X-Received: by 10.194.103.4 with SMTP id fs4mr3778984wjb.10.1465377623835;
	Wed, 08 Jun 2016 02:20:23 -0700 (PDT)
Received: from [192.168.2.170] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	o129sm23508256wmb.17.2016.06.08.02.20.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Jun 2016 02:20:23 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <5756B9D2.3000700@elfin.de>
	<CAJTo0LZa_9kevvq-P0qD21WtmYuVt7=ogt4VU2xCS6xX=LWetw@mail.gmail.com>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <5757E356.4060309@elfin.de>
Date: Wed, 8 Jun 2016 11:20:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZa_9kevvq-P0qD21WtmYuVt7=ogt4VU2xCS6xX=LWetw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DISTRO_FEATURES modification from image recipe?
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
X-List-Received-Date: Wed, 08 Jun 2016 09:20:28 -0000
Content-Type: multipart/alternative;
	boundary="------------020505040909000505080707"

--------------020505040909000505080707
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Thanks.
I actually want to enable systemd in all packages, but my current DISTRO 
is "poky".
Can you point me some documentation where I can get information on how 
to create a distro file based on poky and add systemd there?

Thanks,
Piotr

On 07.06.2016 15:53, Burton, Ross wrote:
>
> On 7 June 2016 at 13:10, piotr.lewicki <piotr.lewicki@elfin.de 
> <mailto:piotr.lewicki@elfin.de>> wrote:
>
>     Is it possible to manipulate DISTRO_FEATURES from my image recipe
>     file?
>
>
> No.  You should control distro features in your distro configuration 
> or if they're for local tweaking in your local.conf.  Would it be 
> helpful if you explained why you want to enable systemd in some images 
> but not others?  In this case the systemd feature isn't exclusive with 
> sysvinit, you can enable both and pick on a per-image basis what init 
> system is used.
>
> Ross


--------------020505040909000505080707
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Thanks. <br>
    I actually want to enable systemd in all packages, but my current
    DISTRO is "poky".<br>
    Can you point me some documentation where I can get information on
    how to create a distro file based on poky and add systemd there?<br>
    <br>
    Thanks,<br>
    Piotr<br>
    <br>
    <div class="moz-cite-prefix">On 07.06.2016 15:53, Burton, Ross
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAJTo0LZa_9kevvq-P0qD21WtmYuVt7=ogt4VU2xCS6xX=LWetw@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div class="gmail_extra"><br>
          <div class="gmail_quote">On 7 June 2016 at 13:10,
            piotr.lewicki <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:piotr.lewicki@elfin.de" target="_blank">piotr.lewicki@elfin.de</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div id=":22a" class="a3s aXjCH m1552ac731f87a60f">Is it
                possible to manipulate DISTRO_FEATURES from my image
                recipe file?<br>
              </div>
            </blockquote>
          </div>
          <br>
          No.  You should control distro features in your distro
          configuration or if they're for local tweaking in your
          local.conf.  Would it be helpful if you explained why you want
          to enable systemd in some images but not others?  In this case
          the systemd feature isn't exclusive with sysvinit, you can
          enable both and pick on a per-image basis what init system is
          used.</div>
        <div class="gmail_extra"><br>
        </div>
        <div class="gmail_extra">Ross</div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020505040909000505080707--
