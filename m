Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45F6CE00BD3
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 03:50:13 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id k15so5339qaq.15
	for <yocto@yoctoproject.org>; Wed, 02 Apr 2014 03:50:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=79s4FVd3RfHguXMQuy6nT0BAk/mIIFmxBpU76GzpCRc=;
	b=QPJ7jCOfx1woJKiKiaVkbCCN0f83UhKyOhgFmKJAjeLpD1C89zA8p+VBAeRVdLhmPG
	ZE/MuRUe6eP7xpe9TdUwtwDdALR7BzDokdRme97/8eBga+/eI6OseVn9isRx7plExwX1
	5DQuTjVionf/AiT3vNOLNHqfFls6KXOVuL1/1OK+EwLDwLr40KewkVq0XtXnAFsMqbuf
	r2pPk3yEm0mNgXWajX9Jw3oMwmaOnKmx+77OYgZMZvq3ay3UXII7NIu867cZ2IfmqBKj
	Fx8jbrGinazQaRxMxCTtGsXnVNqEEIBJdVIOYelI1mtLjYwjbs70vwbHOrutyt6oqNgO
	pSfA==
X-Gm-Message-State: ALoCoQnbqOcDzqUQK97EUSAbH7WCKW+9HpG4YVTFRsUwKOo6JvpuIqxwJ8OkWA06N2QuBZ58S0ay
X-Received: by 10.229.12.197 with SMTP id y5mr435849qcy.22.1396435812970; Wed,
	02 Apr 2014 03:50:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 2 Apr 2014 03:49:52 -0700 (PDT)
In-Reply-To: <E4938C0D959B3445943720B88F07213415613B44@NDA-HCLT-MBS02.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415613B44@NDA-HCLT-MBS02.hclt.corp.hcl.in>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Apr 2014 11:49:52 +0100
Message-ID: <CAJTo0LZt8JA25fpeCxbkdMH44rcNtKKE8vPvhrnPN8iLMcJYAA@mail.gmail.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Wed, 02 Apr 2014 10:50:17 -0000
Content-Type: text/plain; charset=UTF-8

On 1 April 2014 10:05, Meenakumari Shedole <meenakumari.s@hcl.com> wrote:
> I have used libva-intel-driver-1.2.0 as a part of meta-intel on Dora as the recipes provided by Intel. I can attach bb file also if its needed.
> Have build Intel va source manually and now we can able to sink with vaapisink in its own window.
> We are not able to use vaapisink with AVI/3GP files, asking for some missing video/x-surface.
>
> I have checked vaapisink source, it seems its supporting overlay on foreign X window.
> https://gitorious.org/vaapi/gstreamer-vaapi/source/643d35e87a67376af9cd89cd868666368b105ac3:gst/vaapisink/gstvaapisink.c
> static gboolean gst_vaapisink_implements_interface_supported();
> static gboolean gst_vaapisink_ensure_window_xid();

The most important thing to do here is to do testing with gst-launch
to remove your application causing problems.  Embedding pipelines
(especially using vaapi) into other windows isn't trivial and its
possible that your application is causing the problem.    If
"gst-launch playbin2" works fine for all of your files then your
application is causing the problem.

Ross

