Return-Path: <michael@cubic.org>
Received: from roasted.cubic.org (roasted.cubic.org [193.108.181.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4597E006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 13:02:07 -0700 (PDT)
Received: from kiel-5f77bd42.pool.mediaways.net ([95.119.189.66]:57212
	helo=[192.168.10.100])
	by roasted.cubic.org with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.69) (envelope-from <michael@cubic.org>) id 1UjxQh-0002uk-3m
	for yocto@yoctoproject.org; Tue, 04 Jun 2013 13:02:05 -0700
Message-ID: <51AE47B3.4010406@cubic.org>
Date: Tue, 04 Jun 2013 22:01:55 +0200
From: Michael Stickel <michael@cubic.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:14.0) Gecko/20120713 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<62291455.6hREtkkLEB@helios>
	<CAAGt+t3VoPRzymiJKG5kwEXeD=SPDWO1KTa2AqE6QHG5t0XTyw@mail.gmail.com>
	<4896833.vPV5cWFueY@helios>
	<CAAGt+t0JjS9XwkZe2v3h9yztWD_V08ZXw=6jRtzuKGQcia6gxA@mail.gmail.com>
In-Reply-To: <CAAGt+t0JjS9XwkZe2v3h9yztWD_V08ZXw=6jRtzuKGQcia6gxA@mail.gmail.com>
X-Spam-Score: -1.4
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 20:02:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi

This is the checksum over the archive. If this is your own recipe and 
has no checksum yet, just add the two lines to your recipe (for example 
right after the SRC_URI line):

SRC_URI[md5sum] = "fc01b05c7f943d3c42124942a2a9bb3a"
SRC_URI[sha256sum] = 
"fd593b5bcf6d1bb6d7d1bb7eefdccdc0010cf2c4985ccb445ef490f768b927c0"

The checksum is used to check if the archive is broken or the wrong version.

This is something different than the LIC_FILES_CHKSUM, that checks if 
license in the archive is what the recipe expects.

Best regards
Michael


