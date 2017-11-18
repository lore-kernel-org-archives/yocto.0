Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AD85E00D42; Sat, 18 Nov 2017 04:50:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Sat, 18 Nov 2017 04:50:16 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62ECEE00CFF
	for <yocto@yoctoproject.org>; Sat, 18 Nov 2017 04:50:15 -0800 (PST)
Received: from [192.168.159.12] ([88.109.27.80]) by mrelayeu.kundenserver.de
	(mreue004 [212.227.15.163]) with ESMTPSA (Nemesis) id
	0MEaJJ-1eMt3e49DF-00Fg4G for <yocto@yoctoproject.org>; Sat, 18 Nov 2017
	13:45:12 +0100
To: yocto@yoctoproject.org
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <0b621d79-67cd-af97-d423-4cad61a8989d@2net.co.uk>
Date: Sat, 18 Nov 2017 12:45:11 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Provags-ID: V03:K0:kVxvyhvNs3Y+bepRd+0ete2W1ODZQ0CXaIQNfvhgZ90LVBpVFtI
	UakHCLi5h3ki+OHeJYAGXcd9yW4BbPEDDXPld7cEU7vgrMyaNECnb/5FGI4evszQ77TKpj2
	qMR66UUVul5EsGyTskbnO+oIh7D61H5BIEBGWz8wVQiMj5rJWLWuQWvnRmtGAnojFouHPAh
	SNGjf+NXQJiQTx518Klcw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Yt7X4HS0oUA=:4cvp3ALeQwwSh4VV+vcQNS
	R72I9UqCH8fpZyQ5Ck15xmiq8WtroG1IB150+5rqy+PtVTeQQkOYeB6J7aG4VipLtf4kFSIEy
	tgXLlYyh5bK2WlmWapMiGWc5vzt4Gz3/7YXJ+1YZRQOyvvpm+CDrpCrAXdMrFCq5CG/PHuEPh
	LsWSaxCDzYJleOqcxeoiacmxYyfDrYME8ITLnc/jeiHqv1qaYuMy+UlWZ8fSpc0pnEoSHVjn5
	vW1UB4Rv42icYtQ3dOCsnTBeKsmC8Nl3TOj4mAD0/eXWTowDo47TolIvImfJHkUGtnvZIIhgh
	06HFpmH3VkNpMSNqhKA7lKBdfYuVYSMEmkOJdI5Kq5SbLBXSeOrfcF0dqjVLYc/8bTea/AGHc
	Z7pY3gKeYshJXyHjJz7KvmBBAjP6qWiBt4mKA1NpXX/16apX93to7dLg642MLM8v/SeD+BEPF
	hLPjSTExKetcw3yxu1RqJloXQMRcdvevk6lEpOteXyZAG3NHeOMkf+EqVLjdDJZO94KtC+k1r
	BTIE2MIYuj4no2e9M4CVd/MqeudiierK0EZW33AAIe3/Tb7zNFL7os9lbthP7cfYMTolqbcsU
	27B7m8MbgLUaZaCqryKKhc648fKN/LLiI+Ty830+j7yQBByarwKiHJ787foVkh9l+QEZ/wk3f
	mhqdcGAtHOD8NDgKZcg3Dz8PBpZCQrgIauwxdSD7BqnWEX6yFZWAE5ckQ08HbTYjszf38zumw
	W4smbqS/FGUbWUQcFs5IbAKN09QNm+9CKT2YYmImUgJ+M+l8hR7eVt+cA2s=
Subject: Displaying buildcfg
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 18 Nov 2017 12:50:17 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi,

At the start of a bitbake run it displays the current build
configuration before it starts to build anything:

Build Configuration:
BB_VERSION        = "1.28.0"
BUILD_SYS         = "x86_64-linux"
[...]

This information is useful, especially when you are swapping between
multiple projects with different versions. Is there a simple way to get
bitbake to print just this information, without going on to do build
anything?

Regards,
Chris

