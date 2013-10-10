Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D730E01642
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 09:22:09 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id id10so1326632vcb.40
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 09:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=KJtMsJ49sW/S6Rhyug+t8VWXqGSXr4jvNcnjUvk2UIs=;
	b=OY+0gfZFe4Zkw9PMoZJDGbOi3e9OwfiCp6oRcGtcWgcckkHsRXeTI19wtYrp/5GTCk
	kFM89J6aG+kDUOjbViQB0acaw1fawCt5cz6xSDSD5PiQCVyIBXz8NlTweCoJv8MrRI25
	mR1m1HPEBxrlNiBWQKIWtF5fKEY6HPbEm+Io0kSzdjXDjlceLOsjuDHrpQVQtt/XeKgt
	kmQlJc96lG9Uay0nlrFN68npkovmcCooAATMGUpBSSXJUl1V2VuoG5OsBRzwGe8imyzo
	vGYWeTHR2XHsx0ijlR9uHph8C1fhCJVsMUdmC3lDv3L4lvv4VpbpS3v4viv+5bhWDzdD
	iWmQ==
X-Gm-Message-State: ALoCoQkPcY8AMQAr6sKuWEL/eu90InZTcAHb9vpfRH1JHnvyu7ZGHGUwyXpPY47gQj0wVDd+1L9L
MIME-Version: 1.0
X-Received: by 10.221.44.136 with SMTP id ug8mr15250657vcb.13.1381422128767;
	Thu, 10 Oct 2013 09:22:08 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Thu, 10 Oct 2013 09:22:08 -0700 (PDT)
Date: Thu, 10 Oct 2013 09:22:08 -0700
Message-ID: <CAPhnLPBrqCz0_DqAndE2DqN5ZQEmxyefrt3CS0qu=0kuqtZnTw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: 1.5 buildout
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
X-List-Received-Date: Thu, 10 Oct 2013 16:22:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I've rebuilt out 1.5 on the refreshed OS autobuilders. Everything was
green. The binaries are available at:

http://autobuilder.yoctoproject.org/pub/releases/dora-10.0.0

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

