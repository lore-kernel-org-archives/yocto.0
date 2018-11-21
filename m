Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A626E00C7C; Wed, 21 Nov 2018 10:12:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.161 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd14161.aruba.it (smtpcmd14161.aruba.it [62.149.156.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F59BE00C10
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2018 10:12:08 -0800 (PST)
Received: from [10.0.3.112] ([78.6.3.122])
	by smtpcmd14.ad.aruba.it with bizsmtp
	id 2iC71z00H2dwwGE01iC7AA; Wed, 21 Nov 2018 19:12:07 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <eefa2d0b-7e2f-eb1c-1375-ce151583e545@faresoftware.it>
Date: Wed, 21 Nov 2018 19:12:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.1
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1542823927; bh=E1xWgW1OaqszBwwqDH2LP82yY9MRA/7mlOz7FFHEwsY=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=jM4fsFCE5H7TrAxZ48yGHdi/LXt7hyN+2Ii0HmZko5z/FeeSNx5PVJ0ebigz06OpL
	Acw0tWSy6FUnkY2drGj/gg8onq8J2tEohbAt30Tz4aXrcIbOs3GUadR1jZOBHgcQsi
	o1QgI64fQGMWooVUVBwAyADXMduLcLL9ceL2sYGxfHqM2X4MZgPd8+WDVPp+Iriynd
	vcxf56WHpVH4nUq7xh0J8FSwoK+DgbczwLnQ/f/sX3J5KbaH0gYkF4BsWjwAdyfXDf
	71bWqAdlntvKcpXMTb/gz3nrRIdontWpFF8kN8Dg4xPb5cj+k4lhcx9Mq/Y7lrUE7Y
	HSaFYSXCN2VoQ==
Subject: Copy tar file without expand it
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
X-List-Received-Date: Wed, 21 Nov 2018 18:12:10 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I need to copy a tar file from 'files' subdir of my recipe into
/upgrade_file in the file image.

I don't need to expand it, only copy.


How can I do that?


in my recipe I put but myfile.tar will be exploded.


SRC_URI += " \

    file://myfile.tar \

"

do_install_append() {

    install -m 0644 ${WORKDIR}/myfile.tar ${D}/upgrade_file

}


There some options to pass in SRC_URI to avoid tar expansion?


MZ


