Return-Path: <442-103-8455@kylheku.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11711E00C43; Tue,  5 Mar 2019 18:29:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FROM_STARTS_WITH_NUMS,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.7 FROM_STARTS_WITH_NUMS From: starts with several numbers
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.59.136.137 listed in list.dnswl.org]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Mar 2019 18:29:47 PST
Received: from smtp-out-so.shaw.ca (smtp-out-so.shaw.ca [64.59.136.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C045E00A54
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 18:29:47 -0800 (PST)
Received: from kylheku.com ([70.79.163.252]) by shaw.ca with ESMTPA
	id 1MIXhcDTb3Vk81MIYhKa9J; Tue, 05 Mar 2019 19:28:47 -0700
X-Authority-Analysis: v=2.3 cv=RcXu9Glv c=1 sm=1 tr=0
	a=95A0EdhkF1LMGt25d7h1IQ==:117 a=95A0EdhkF1LMGt25d7h1IQ==:17
	a=IkcTkHD0fZMA:10 a=SMorJkV_YP8A:10 a=NTGMnVQrEZIA:10
	a=pw3DvmYinDNfr2jCjW4A:9 a=QEXdDO2ut3YA:10 a=pHzHmUro8NiASowvMSCR:22
	a=n87TN5wuljxrRezIQYnT:22
Received: from www-data by kylheku.com with local (Exim 4.72)
	(envelope-from <442-103-8455@kylheku.com>) id 1h1MIX-0005cH-6L
	for yocto@yoctoproject.org; Tue, 05 Mar 2019 18:28:45 -0800
To: yocto@yoctoproject.org
X-PHP-Originating-Script: 501:rcmail.php
MIME-Version: 1.0
Date: Tue, 05 Mar 2019 18:28:45 -0800
From: "Kaz Kylheku (poky)" <442-103-8455@kylheku.com>
Message-ID: <4d30a0e379c74c9e673fd65721463b04@mail.kylheku.com>
X-Sender: 442-103-8455@kylheku.com
User-Agent: Roundcube Webmail/0.9.2
X-CMAE-Envelope: MS4wfNQO08WFlyAcVFWPa9WjaOMEjeZkbhqr0GsN40sltl3+uMAg7PDzEQ/qm1/KLRrybM/5XVtIaQW+o9dxjJJS9qRh2cl+qQzWVr+SqYpL7B58E/S3bcER
	GGtjNh3W/NK+h8siCfKbKtH9/V0MN9uPTBJNdfQl29UaFwzAeclFGxB4LchcB0v7D1VjmUJaCbGHAw==
Subject: Incremental rebuild doesn't pick up FILES changes.
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
X-List-Received-Date: Wed, 06 Mar 2019 02:29:48 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I'm working in a Yocto 2.5 environment.

In my own layer, I added a bbappend targeting python which does this:

   FILES_${PN}_remove =3D "${libdir}/python2.7/encodings"

Now this didn't take effect as I expected. I had to do a "bitbake -c=20
cleanall python" to rebuild the package.

In any case, all I have in the image now, as I expected, is these four=20
files, vastly reduced from dozens:

   /usr/lib/python2.7/encodings/{aliases,utf-8}.{py,pyc}

Now, if I comment out this FILES_${PN}_remove variable assignment, I=20
cannot get the previously removed encoding modules to re-appear in my=20
image! I tried "bitbake -c cleanall" on python, and blowing away its=20
build directory. It didn't work; still there are just those four files.

How do we get Yocto to react to FILES changes, short of blowing away the=20
entire build tree?


