Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DEF7E0146D
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:13:47 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id s24so1927544vbi.36
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:13:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=CduLuTncpw36c7fHiWb680Hqz/ojZwAzHYl0GRHFs0k=;
	b=mhdAxDn2l/CUwijuPeJuqYk0G37ujQTx0d3ZpDsDlXf+YP9cr7wa+kGqIu+iPc8ti6
	cm28PpCBj61KjTSUQ2m1EOolBwESr5EWDiO9gFj4zil9RKRdUGcXsiZnzM/g2XL5X8PN
	8lUHyQ67r1LGp4S1JRtk2KgTrOFyTeXhMVBgJuG0EwEFPMsHKx+dlv1PMyJQgJXiseZ3
	u6EgwLct9sOzUE3FLeXG4+C2U6oT3+po5hDUSPJ94XEl/XLoh722MbS45Kb89WP5OHhg
	OrwmizJUwIeMWVLjqdvTbqym4tZuVGdEiaaPuvt3MDhGUDmCpcC4A51KQBLNPjGBAKT0
	QP0A==
X-Received: by 10.220.151.144 with SMTP id c16mr13759412vcw.18.1363875226648; 
	Thu, 21 Mar 2013 07:13:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Thu, 21 Mar 2013 07:13:26 -0700 (PDT)
In-Reply-To: <CA+chaQcK5mDao81MAMnrM+FmOTnH8FAKmZ2KyX95FTruuTNS-A@mail.gmail.com>
References: <513F03EC.4020909@linux.intel.com>
	<514972E1.3010802@linux.intel.com>
	<CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
	<CA+chaQcK5mDao81MAMnrM+FmOTnH8FAKmZ2KyX95FTruuTNS-A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Mar 2013 14:13:26 +0000
Message-ID: <CAJTo0LavnpYoTcdbiZ-3C-Fu6duuN9btqFtmCUgW5pWDLGX+Hg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQlECkRhQPqjdLU0PfvhJaS4KjfutgTmHdyp9Nasjk4cxm288ytPuaCb7gi501cWRSAvN03Q
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemd timeouts started daemons
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
X-List-Received-Date: Thu, 21 Mar 2013 14:13:47 -0000
Content-Type: text/plain; charset=UTF-8

On 21 March 2013 14:10, Martin Jansa <martin.jansa@gmail.com> wrote:
> Does this resolve also update-rc.d postinst trying to start
> /etc/init.d/dbus-1 and failing to find it?

That's something else to be fixed.

Ross

