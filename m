Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C951DE002AB
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 10:54:35 -0800 (PST)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id A9C90B6A056
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 19:54:33 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.3 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from ashley.wagner-net (irap7n.rad.med.uni-muenchen.de
	[138.246.199.119])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id 91E6DB6A014
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 19:54:33 +0100 (CET)
Message-ID: <51115568.50505@philipp-wagner.com>
Date: Tue, 05 Feb 2013 19:54:32 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130105 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-3-git-send-email-lists@philipp-wagner.com>
	<5111545D.40906@r-finger.com>
In-Reply-To: <5111545D.40906@r-finger.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [meta-raspberrypi][PATCH 2/2] Add RPROVIDES for OpenGL libraries
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
X-List-Received-Date: Tue, 05 Feb 2013 18:54:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 05.02.2013 19:50, schrieb Tomas Frydrych:
> On 30/01/13 21:51, Philipp Wagner wrote:
>> https://github.com/djwillis/meta-raspberrypi/issues/55
>>
>>  PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
>> +RPROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
> 
> As I noted in the above issue, this really is wrong; there is *no* libgl
> provided by the RPi firmware.

In the bug report, Andrei also mentions that it is required for some
reason, but I don't know exactly what the reason is.

Andrei, could you explain that in more detail?

Philipp

