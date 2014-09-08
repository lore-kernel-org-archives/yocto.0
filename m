Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C040E00846; Mon,  8 Sep 2014 00:55:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E42E0056A
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 00:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=Kh1iEjpSKqAEVxCLbFSQ7Z333d4759jReBWJazPfGwU=; 
	b=ENQAUq5s2h3fOhGDaHTfm6KVu0O/VBse0/QVgGP7k8Yiu4yUelqgO4rqqCN0JPK0K8lsLcLwbh2ZJJIIhrJSfDE6gMEuK6vcbrJYAUxu2UE361Yx3H8d09bbNS5lvYb4fxLKIqAOmKnEdq0NRU7y9IkB3bE0ncyJ+Msd4bFKhAQ=;
Received: from [109.224.171.0] (port=50328
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XQtn9-000TXc-5t
	for yocto@yoctoproject.org; Mon, 08 Sep 2014 08:55:16 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <F2F22E20-4E45-4693-95D5-9FC01F81E8D8@keylevel.com>
Date: Mon, 8 Sep 2014 08:55:15 +0100
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
Subject: How does RRECOMMENDS work?
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
X-List-Received-Date: Mon, 08 Sep 2014 07:55:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a recipe to which I've added:

RRECOMMENDS_${PN} =3D "<package>"

The documentation says that "If, during the build, a package from the =
RRECOMMENDS list cannot be found, the build process continues without an =
error".

I tried a build without <package> (i.e. no recipe) and it failed with =
"Nothing provides <package>". Is this the expected behaviour? If so, is =
there a way I can pull in a package if it is build-able and skip it =
otherwise?

In this case <package> contains some utilities which can be of help, but =
they're not required in any way at runtime.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com





