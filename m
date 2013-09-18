Return-Path: <fathi.boudra@linaro.org>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18FB7E01574
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 14:52:16 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id y6so7154498lbh.35
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 14:52:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=uNKtwTh/9r8cuax+MFjnf6Z52XilU5Tw02J8Om+yHws=;
	b=fgkBeMImogDNNsGibgOdQ+W0dkP9ooh8kn4GLsWzHY90rv9Croezwhy5DnF3wMJvO9
	QE9o4VmfznAAk4AClIhJ36IAqUhBnKs/x8Pbb4Ifh8K5Mo+G/h9WqMPJWViUX8jrXsaX
	1yEWzWst4761i8FLjneJCKCiQNZh0j+Bovz3Bym81L82WD7qxtLFMg3H1Gwv3mi4roCC
	b7bfgBKdyfQHEljO1FrInxF4lWijJNmxb7LYjdhJiFib5sjpaFdlZd0OpsluDWHDoLXD
	wP4P19O3PVK25DRTNiFrpAD923QI9jirEnG69O/dpatwgm12mc2832T1lVeQBuIbDbLC
	GCaA==
X-Gm-Message-State: ALoCoQlMB+sCmdyXeub/noKB2M1R1+zvtYcGwOWLwFaxocFJr/UqEB2TNOD7DuwxKhOa7xsDtb3v
MIME-Version: 1.0
X-Received: by 10.152.116.109 with SMTP id jv13mr4052929lab.30.1379541135695; 
	Wed, 18 Sep 2013 14:52:15 -0700 (PDT)
Received: by 10.112.173.66 with HTTP; Wed, 18 Sep 2013 14:52:15 -0700 (PDT)
In-Reply-To: <CALmOhgkPb8KC5iCYZ+FWhzcPmZG9Vpr3Zw3CurdtUn7b2L4WYA@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
	<CALmOhgkPb8KC5iCYZ+FWhzcPmZG9Vpr3Zw3CurdtUn7b2L4WYA@mail.gmail.com>
Date: Thu, 19 Sep 2013 00:52:15 +0300
Message-ID: <CAGNsrLDmJDvT3X_7=V+RTiHkG9kZoadXvAnW5WU19EJeO-yO2Q@mail.gmail.com>
From: Fathi Boudra <fathi.boudra@linaro.org>
To: Trevor Woerner <trevor.woerner@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Wed, 18 Sep 2013 21:52:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 17 September 2013 04:23, Trevor Woerner <trevor.woerner@linaro.org> wrote:
> Hi Fathi,
>
> On 26 August 2013 07:11, Fathi Boudra <fathi.boudra@linaro.org> wrote:
>> I haven't checked how qtwebkit is built or meta-qt5, but the Qt's
>> configure has -no-rpath option. A grep on meta-qt5 doesn't show any
>> usage of it.
>
> A "-no-rpath" option looks like something that might be passed to
> ./configure? I'm not sure if things are done differently on master,
> but on dylan qmake is used to generate the Makefiles. Or is
> "-no-rpath" something that can be passed to "qmake"?

It's a configure argument. Unfortunately, it doesn't help in this case.
afaics, most distro are using chrpath hack to get rid of it in
QtWebProcess and QtWebPluginProcess.
A "proper" fix ins't available yet... it doesn't seem trivial, see
https://github.com/WebKit/webkit/commit/069ee433aba1ae8ae5107784b22bd6ade830a012

