Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9D0BFE014B3
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 09:27:20 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r24HYkIM023064; Mon, 4 Mar 2013 17:34:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 001xodI38wkx; Mon,  4 Mar 2013 17:34:46 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r24HYaeO023059
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 4 Mar 2013 17:34:39 GMT
Message-ID: <1362418002.29587.42.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Otavio Salvador <otavio@ossystems.com.br>
Date: Mon, 04 Mar 2013 17:26:42 +0000
In-Reply-To: <CAP9ODKozO-vpHdqDWxPMnYaaCt6eZUy_EjoEfAeDObdSjKj2_g@mail.gmail.com>
References: <1362407704.29587.39.camel@ted>
	<CAP9ODKozO-vpHdqDWxPMnYaaCt6eZUy_EjoEfAeDObdSjKj2_g@mail.gmail.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Feature Completion Deadline for 1.4 looming
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Mar 2013 17:27:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2013-03-04 at 14:00 -0300, Otavio Salvador wrote:
> On Mon, Mar 4, 2013 at 11:35 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > The 1.4 release is scheduled for 2013/04/26. We have one milestone
> > release before then, M5 on 2013/03/17. This is also the feature complete
> > deadline.
> >
> > This means if there are features or other changes you want to see in
> > 1.4, they need to be in by the 17th[1]. After the 17th we'll be doing
> > bugfixing and stabilisation and new features will have to wait for 1.5.
> >
> > [1] Within reason, large unexpected invasive changes appearing on the
> > 17th will probably not make it unless the solve world hunger or have an
> > equally impressive benefit.
> 
> The systemd integration? Will it be  reworked so we have an upgrade path?

I'd also mention that systemd is something I know about and is a
priority for this release so I'm going to have some flexibility in
getting it resolved.

The main reason for sending this out is people have wanted more notice
about feature freeze in the past...

Cheers,

Richard



