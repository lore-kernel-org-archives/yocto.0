Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57D5BE00B30; Wed, 21 Mar 2018 02:44:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB3CE00A38
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 02:44:02 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w2L9hkpJ032462
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Wed, 21 Mar 2018 09:43:49 GMT
Message-ID: <1521625424.25754.214.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Wed, 21 Mar 2018 09:43:44 +0000
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.3 at dan
X-Virus-Status: Clean
Cc: aaron.chun.yew.chan@intel.com
Subject: Release candidate build for Yocto Project 2.5 M3 rc1
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
X-List-Received-Date: Wed, 21 Mar 2018 09:44:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

We have a build ready for QA for the Yocto Project release 2.5 M3 rc1.
This build is slightly different in that it has been run on the new
autobuilder codebase. We don't have automated release emails yet so I'm
writing this manually. The release is available at:

http://autobuilder.yoctoproject.org/pub/yocto-2.5_M3.rc1/

The build results can be seen at:

https://autobuilder.yoctoproject.org/new/#/console

As you can see, there was one failure in nightly-qa-extras to do with
syslogd under systemd images. Right now I think we note this for the M3
release and fix during M4, it was caused by the systemd upgrade which
was added late on. We will need a bug for this.

For comparison, I also built this release on the current yocto.io
infrastructure. I have an additional request for QA to compare the list
of artefacts generated from the new codebase with the artefacts from
the old codebase. Those are available here:

https://autobuilder.yocto.io/pub/releases/yocto-2.5_M3.rc1/
(from https://autobuilder.yocto.io/builders/nightly/builds/965 which
had the same qa-extras failure).

I did already notice we're missing the top level tarballs , which is
odd since I know we do generate them. This is something we'll need to
investigate but I wouldn't block M3 on this.

Any questions let me know.

Cheers,

Richard



