Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 307F1E0080A; Mon, 14 Nov 2016 13:33:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F30E2E007D3
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 13:33:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTP id uAELXkav029442
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2016 13:33:47 -0800 (PST)
Received: from soho-mhatle-m.wrs.com (128.224.60.178) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.294.0; Mon, 14 Nov 2016 13:33:46 -0800
To: <yocto@yoctoproject.org>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <3c1498ac-b4f1-4ea1-8332-9919c1ef1087@windriver.com>
Date: Mon, 14 Nov 2016 16:33:45 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
Cc: Liam Howlett <liam.howlett@windriver.com>
Subject: [layerindex-web] Fixes to import_project.py
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
X-List-Received-Date: Mon, 14 Nov 2016 21:33:55 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

I've pushed two new commits to the mhatle/django18 branch.

Below are the two additional commits.  These fix issues we discovered in the
import_project.py script.

commit 842c76a95a48be5b18def0b713d1158a4dea24b2
Author: Liam R. Howlett <Liam.Howlett@WindRiver.com>
Date:   Fri Nov 4 11:10:22 2016 -0400

    layerindex/tools/import_project.py: Code cleanup

    Remove ; and spaces when setting variables in calls.

    Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
    Signed-off-by: Mark Hatle <mark.hatle@windriver.com>

commit 5951402e7275738696409a5ca5fa08b0c1d57031
Author: Liam R. Howlett <Liam.Howlett@WindRiver.com>
Date:   Fri Nov 4 11:09:29 2016 -0400

    layerindex/tools/import_project.py: Detect remote name & branch

    Don't assume remote name is origin, run `git remote` to get the remote
    name.  When checking the remote, detect the branch as well, that way the
    layerindex will work if the remote branch name and local branch name do
    not match.

    Note that this currently only supports one remote.

    Signed-off-by: Liam R. Howlett <Liam.Howlett@WindRiver.com>
    Signed-off-by: Mark Hatle <mark.hatle@windriver.com>

