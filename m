Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f169.google.com (mail-wi0-f169.google.com
	[209.85.212.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE7C2E01473
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 05:02:57 -0700 (PDT)
Received: by mail-wi0-f169.google.com with SMTP id l13so485964wie.4
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 05:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=8qjy1nGa33skCGmUYqCID1cmY9YnGGHh/Kxyfa7IuwI=;
	b=rZv1Bhmp5LA8eEY+meht2eOmgQoJdUX2YYr3hlcZ+tey8YArPlpYWYo3QcvCZyeQgb
	3bQTMx+IfyviNPsKmHgex8l4/6qT4Dek/DrjDBLZb9vSpEPhu0u5hzww9MiKMsjwNGff
	vsX/dPMphNVyNZNEdu+KIrTdfSCYva83xlaqKhqTJmPpWUFK55HYBNv6ABzd7ng74iBJ
	gKAngv3UTLyjM2D5tdGupXQlrN1kHyXm1WYGpAmuANJeuIHMT4IS/eEXP39kwDoekqXH
	O3mwA7RHjHK8ontEG5yDOEL7ZWrz6b1C9Y6hSxU8j2vNMPPS7qWfEwMet8+1fCp4nnxo
	bMIw==
MIME-Version: 1.0
X-Received: by 10.194.58.202 with SMTP id t10mr10499513wjq.4.1363348977130;
	Fri, 15 Mar 2013 05:02:57 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Fri, 15 Mar 2013 05:02:56 -0700 (PDT)
Date: Fri, 15 Mar 2013 08:02:56 -0400
Message-ID: <CAHUNapQFU7iXCS2Lu4Z+rfNbU9iD+Fft2BDaawTT-U=YFqfLfA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: distribution validation
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
X-List-Received-Date: Fri, 15 Mar 2013 12:02:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

A new version of openSuSE has been released. What's the criteria for
determining that a given version of a distribution has been validated
for Yocto? What is required in order to add it to the list of valid
distirbutions?

