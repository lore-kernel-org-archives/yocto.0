Return-Path: <jean-christian.derivaz@innodelec.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A31E0091D; Thu, 28 Feb 2019 11:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.147.79.142 listed in list.dnswl.org]
Received: from europa.tizoo.com (europa.tizoo.com [212.147.79.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FCF1E00872
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2019 11:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=innodelec.ch; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-ID:To:Subject:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OfKpeYhrmd7WL1Oxh/AfzgLvzty9ZSEOCU8WLWjcPg4=;
	b=DmeMHi2KcYITrUMzFT/H41etVV
	tES12I2PpTn7sDV7YdWVuwdd3MLkBD4cV6rzl8ZNXkvjbDYPRqWrH5CHzXE0QfDSW/FdSFLE89mJO
	HOCxtMfGIU68YCjjFvBi94NIxLA7GIPPTObugaTWYoxzBjjaiCzPnIwVZFSO1zLSUTrblUbCQmoKk
	awKTvb2SFDzNqjgEfu3lRmqMarldtmtbNUueAjaPyqCWNsaaWvttTcVeY5yLoLohR5jYsvx56Lu6r
	2SmqwLB0eUtAPAemNhC3iiOX/gnqzdRsUVIxyN4uCkD4N8Oh+I6HUEO40H3q7zKX2KzzEpLQvHI4k
	y4bvA73g==;
Received: from [213.221.150.139] (port=38140 helo=[10.0.33.10])
	by europa.tizoo.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.91)
	(envelope-from <jean-christian.derivaz@innodelec.ch>)
	id 1gzRki-00AZlW-Iu
	for yocto@yoctoproject.org; Thu, 28 Feb 2019 20:53:57 +0100
From: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <4040cf53-3ef8-433e-1df8-d981dd93ce73@innodelec.ch>
Date: Thu, 28 Feb 2019 20:53:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - europa.tizoo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - innodelec.ch
X-Get-Message-Sender-Via: europa.tizoo.com: authenticated_id:
	jean-christian.derivaz@innodelec.ch
X-Authenticated-Sender: europa.tizoo.com: jean-christian.derivaz@innodelec.ch
Subject: Proper way to set locale and keymap
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
X-List-Received-Date: Thu, 28 Feb 2019 19:53:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

After some experiments on Poky thud I have found this method to set my
fr_CH.utf8 local and fr_CH-latin keymap in my distribution with systemd
and without busybox:

Add this two lines to the local configuration or distribution
configuration file:

GLIBC_GENERATE_LOCALES = "fr_CH.UTF-8"
IMAGE_LINGUAS = "fr-ch"

After boot add this file to set local in the shell environment variable:

cat <<EOF > /etc/profile.d/locale.sh
if [ -r /etc/locale.conf ]; then
    export \$(cat /etc/locale.conf)
fi
EOF

Finally set the locale and keymap either with the localctl command:

localectl set-locale fr_CH.utf8
localectl set-keymap fr_CH-latin1

Or by directly creating this two files:

echo "LANG=fr_CH.utf8" > /etc/locale.conf
echo "KEYMAP=fr_CH-latin1" > /etc/vconsole.conf

The result is workable but a lot of [Alt Gr] + key characters are missing.
Please comment on this method and if a recipe already exist to do that.

Best regards.

Jean-Christian de Rivaz


