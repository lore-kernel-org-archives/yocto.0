Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C23BE00843; Sun,  7 Sep 2014 15:00:12 -0700 (PDT)
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
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40726E007A2
	for <yocto@yoctoproject.org>; Sun,  7 Sep 2014 15:00:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=ECJWZLdr13Qjg5sMbxghFJtopdLLyb4vhN7A7/HF3nc=; 
	b=R+GYH1mDWAxY//08JbIG5EkSh5Q7vKdhLkZ36l3dSDk9EZl35FWsqXSJdhQ+4jxTxcunuS2IW2fZbFJ7ebW1SPNzIdf75hkFwRrFNVJnPD/azxgSFe1YlFCLoWe1Z+btzjwOKZWbV45YcxyL0AHS6RqGLnDvRvvf/gdy+Bs2cow=;
Received: from [109.224.171.0] (port=13431
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XQkV2-0044tZ-Qv
	for yocto@yoctoproject.org; Sun, 07 Sep 2014 22:59:58 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <E4E599B2-1AEC-4FCD-9AA8-BEA0A0BB541A@keylevel.com>
Date: Sun, 7 Sep 2014 22:59:58 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Daisy mercurial support
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
X-List-Received-Date: Sun, 07 Sep 2014 22:00:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to build a recipe under "daisy" that uses a mercurial =
repository, but I'm getting "Nothing provides mercurial-native".

Adding:

  ASSUME_PROVIDED +=3D "mercurial-native"

to my local.conf appears to fix this, but is this what I should be =
doing?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





