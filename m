Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36F73E00E23; Wed, 11 Sep 2019 08:09:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A753CE00E28
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 08:09:22 -0700 (PDT)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x8BEwU9t030642
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 17:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=N/3/ZBuMOeCuPUVKMqe6jjoQNOlSpT8ArkNC/LRNvQ0=;
	b=zThZ8C9SiKDKr/zo//rkeosQzJkNWLGEStyvhFrHdvYu/m6Em6KqrLmkFL+IJflnv8BG
	qnazN2BPHJFX2fI3u/EAEgLcWmAKZFjcrIhuQ58zq3XijJUSeIFJiXHRBXYCmFpekbih
	+nMdC7pdQLU7AF40rcqy9Uf0CyOmctBa39rXSB5794Ci+wvLnMyaujXSZM8THrjPs4Od
	CraP7VYME807qf28z9ovUIxH9+y1MMKq0C6QmFCy1fI9IFNxqZo/pX7XNececVAQFIuK
	Q1K3Hrua6j1TDwDHcWAPWdC0AmCtxulv9zfVIRqpt6M4I3rHX8t35e5ZW1rHE7MqL87x
	OA== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2080.ppsmtp.net with ESMTP id 2ux8pb3sp1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 17:09:20 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 6A46D70383E
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 17:09:20 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: source an environment file in bitbake recipe.
Thread-Index: AdVospy/eUygXjL4SJCC8dcvxIgvlg==
Date: Wed, 11 Sep 2019 15:09:19 +0000
Message-ID: <05de12924bbb4a26978992b27c4cc74b@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.82]
X-TM-AS-Product-Ver: SMEX-12.5.0.2039-8.5.1020-24904.006
X-TM-AS-Result: No-2.752700-5.000000-10
X-TMASE-MatchedRID: zmwI873M8xL72DPl5weQk+W9J5hJgRQsH0MAL5h27KPLkl8e9W70ixrY
	H8RKBNN06etG8APGdQfTgtjwGTaD7SpY36uQ+6rNngIgpj8eDcDYr6U3ZlQkdtmzcdRxL+xwKra
	uXd3MZDUVQcACIjRQLI3x67if6L1ba7ZTcRITxpQCFd+AN7aB2puwB/dXoqLj4XgerMQA5YTPS+
	A6GgRNTQBkcPRSaKKTmMwzcFSOP8c8mxHOwOUqug==
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--2.752700-5.000000
X-TMASE-Version: SMEX-12.5.0.2039-8.5.1020-24904.006
X-TM-SNTS-SMTP: D99FECD55FA162D45107669F3D064F8C64A6EBDE066728F72FD02C614488A2D02002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190911150920Z
X-Proofpoint-ID: SID=2ux8pb3sp1 QID=2ux8pb3sp1-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-09-11_08:, , signatures=0
Subject: source an environment file in bitbake recipe.
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
X-List-Received-Date: Wed, 11 Sep 2019 15:09:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Is there any way by which I can use the source command inside a bitbake rec=
ipe for example if I need to source some environment file before compiling.
source  <filename> doesn't seem to work=20
Will  the command .  <filename> work
=20
What exactly I need to inherit for source command to work
Thanks
Kamal Pandey


