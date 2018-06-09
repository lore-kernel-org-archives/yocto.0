Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BB08E00DA5; Sat,  9 Jun 2018 02:50:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TEQF_USR_MSGID_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.156 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
Received: from v-smtpout3.han.skanova.net (v-smtpout3.han.skanova.net
	[81.236.60.156])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B448E00EBF
	for <yocto@yoctoproject.org>; Sat,  9 Jun 2018 02:50:43 -0700 (PDT)
Received: from [10.175.196.113] ([37.123.169.62]) by cmsmtp with ESMTPA
	id RaW9fQjSN8KmIRaW9fEXjs; Sat, 09 Jun 2018 11:50:41 +0200
To: yocto@yoctoproject.org
From: Ulf Samuelsson <yocto@emagii.com>
Message-ID: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
Date: Sat, 9 Jun 2018 11:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfB5lgQ4Ug262AXk7mbvIaa0yjhxxbBVdkP0EHsrTEtjIDLVg2U1ghWTPf3wsdzGjuKipRngUYBn3lm9RC+9R+c2s37AZpPxHgXmM4TzjnPhlBrgTKyj2
	8IeAyTy5X8Sm1LPgYJZRVCpruBqh0pquvjBIwU9ZylbSv55OsgHbtuIg
Subject: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Sat, 09 Jun 2018 09:50:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit


We have a rootfs which is read-only.
For files that needs to be updated, like "/etc/localtime"
we will create a symbolic link to a partition (/persistent) which
is retained between rootfs image updates.

/etc/localtime -> /persistent/etc/localtime

The original recipe will generate the real /etc/localtime of course.

To support the file beeing updated, the following needs to be done in a 
rootfs postprocess.

mv   /etc/localtime /update/etc/localtime
ln   -sf /persistent/etc/localtime /etc/localtime
install -m 0644 /update/etc/localtime /persistent/etc/localtime
chown <user>:<group> /persistent/etc/localtime

The last two commands needs to be executed on the running system,
since /persistent is not part of the rootfs.

To ensure that the file can be updated is an ad-hoc activity for each
affected file. It would be better if there was a class where you declare 
a file to be writeable, and then a post process
would move the file to /update (or similar) and create a symbolic link

SETTINGS ?= "/persistent"
=============================
inherit writeable

WRITEABLE = "/etc/localtime"
=============================

This would generate the first two commands for each listed file.

mv   /etc/localtime /update/etc/localtime
ln   -sf ${SETTINGS}/etc/localtime /etc/localtime

The file would also be added to a file indicating that it may need
to be copied to the ${SETTINGS}

Is it a good solution to modify "populate_volatiles.sh"
to support a second file parameter for the f (file) command
in the /etc/default/volatiles file?

Today the file create command looks like:
f <mode> <uid> <gid> <filename> <ignored>

An idea would be to have the following syntax:
f <mode> <uid> <gid> <filename> <source>

If <source> is a valid filepath, then copy this file to <filename>
If <source> is not a valid filepath, create <filename> using "touch"

This would break any build which has a "funny" volatiles file.
Otherwise a script called populate_persistent.sh could be
created with such an extension.

Comments?

BR
Ulf Samuelsson

