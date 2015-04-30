Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19D3BE007B6; Thu, 30 Apr 2015 11:35:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3538 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Apr 2015 11:35:12 PDT
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [184.154.48.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 170D1E0049A
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 11:35:12 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8]
	helo=serv01.siteground282.com)
	by se5.mailspamprotection.com with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.85)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1YnsNd-0006fh-HX
	for yocto@yoctoproject.org; Thu, 30 Apr 2015 12:36:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim; 
	h=Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=gt07Y3dKXiU/ea8cOesMTh5/xZ1iDVuhLXbEuH9eSIY=; 
	b=uuUJoT6RQjU5+RwPV1myrRvm2esP/srOlNmI3wIUkIug5yiWtAuMuDMJsTDhxIqDteYeo4KhCDfwjlvr9x5A6H6XNxkBu5TqpOz3Bj6ckaV6XD3bdEBkjI6odP5KV0LXqKAoX1tq6U+aVZxwL84vl6ijgpvp/MtehmAGnitGp9E=;
Received: from [127.0.0.1] (port=50196 helo=secure282.sgcpanel.com)
	by serv01.siteground282.com with esmtpa (Exim 4.80.1)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1YnsNZ-0001k1-AN; Thu, 30 Apr 2015 12:36:05 -0500
MIME-Version: 1.0
Date: Thu, 30 Apr 2015 12:36:05 -0500
From: gmane@reliableembeddedsystems.com
To: yocto@yoctoproject.org
Message-ID: <da411ac75507ab0c30315da2cdb21c41@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/0.9.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - serv01.siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFxRUWXnS+m4/UKcx+v/4zRXW6bbuQC6NgBhXcdOGl0FbVz1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S4rjo9pjU2jwGeOCxBY5D4UaYsqX
	q41MoOtzweKQlohrFyrtVW4KaRSURqFyxA+5hz/fZ77l9WrLiw3jbC6gJt3PWdnJQeN5cgRmGf5G
	X0xwhXsBjV/r0cSqC1xhIwVnc0ks5uz+SxUE4e8QCBKvyQCW/0SRYQ0ROxX2dwaCJb79Jwd/Ie5B
	ug3IiAebyObbQrbRF0J+AL6gRRwFcty0/RFX0QIjIjCn1zvQuUxCBw4J+4fateCeFsLSBPBEabXV
	ietQy3uAkh2klY0pFWVKuKSFewGNX+vRxKoLXGEjBWdzGfxNlhQyZmS3TgLw2A6IYl068xTqsPYr
	3tWIq8NEELXpd66zq7t8jrxsZWFJWZQXcxw3qqhc+N6cuEg4XWh5Fu7ODt3ZWKSlwFFSRWYcA9bR
	Ls4jLp2Nc3Rh3tvP+8tkKpG8n4qX1ZkqL2zzaUF3Wh14AWL8xY0r3d0M+h3FvS4=
X-Report-Abuse-To: spam@quarantine.mailspamprotection.com
X-Filter-Fingerprint: IFrWXGses7OKB5S5G8/dJb0kolOUiviGeQyDsBgQ6PBA3cTUQ1R++keuE7RDJ8Kg3RbMLUalw1oC
	mj99/u+Poh38tEMU4IgC4sNz49qn3HHnhRv/ZJ3kEy8bfiAr+Fb/UpndEJ0YoaLytXXo8BMTaVt0
	ARHRi6XGuAluI1udprGClI6bm+u9ssQgM5AHe3Zacv4uJct5wtJvPpZ2dlBHCwDSxr3Vz+LJ/RhM
	2JZ0ECN5dnq47RWft7iCyM9+PbHelB4qP9S6mTzNwoPraFy6ieiDqMHb2a0eZvGOvr7RaxKWGCKO
	us9nABr0Pk/4CplP
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.13)
X-Recommended-Action: accept
Cc: robert.berger@reliableembeddedsystems.com
Subject: fido: funny ipk behavior
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
X-List-Received-Date: Thu, 30 Apr 2015 18:35:17 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have a simple recipe like this:

---

DESCRIPTION = "Simple helloworld application + git"
SECTION = "examples"
LICENSE = "MIT"
LIC_FILES_CHKSUM = 
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

SRCREV = "ecf1f0bc87960ef6b6d97c0385b44ce6ea5b2211"
SRC_URI = 
"git:///home/genius/yocto-repos/simple-hello-world-git.git;protocol=file;branch=master"

S = "${WORKDIR}/git"

do_compile() {
         ${CC} simple-hello-world-git.c -o simple-hello-world-git
}

do_install() {
         install -d ${D}${bindir}
         install -m 0755 simple-hello-world-git ${D}${bindir}
}

---

If I bake the .ipk, copy it over to the target and try to install it 
there opkg complains:

opkg install /tmp/simple-hello-world-git_1.0.1-r0_armv7a-vfp-neon.ipk
Installing simple-hello-world-git (1.0.1-r0) on root.
Collected errors:
  * satisfy_dependencies_for: Cannot satisfy the following dependencies 
for simple-hello-world-git:
  *      libc6 (>= 2.21) *
  * opkg_install_cmd: Cannot install package simple-hello-world-git.

---

If I include the package into my image it works, also if I just copy 
over the executable (which is included in the package) it works.

scp 
/home/genius/test/yocto-autobuilder/yocto-worker/custom-fido-vexpressa9-qemu-core-image-minimal/build/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/simple-hello-world-git/1.0.1-r0/git/simple-hello-world-git 
root@192.168.7.2:/tmp

/tmp/simple-hello-world-git
Simple Hello world git!

Am I missing something?

I am pretty sure this worked with dizzy.

Regards,

Robert

