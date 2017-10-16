Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBC5EE00D1C; Mon, 16 Oct 2017 06:46:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FBD0E00D14
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 06:46:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v9GDkLSX024303
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Oct 2017 06:46:21 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 16 Oct 2017 06:46:19 -0700
To: Pavlina Varekova <varekpaf@seznam.cz>, <yocto@yoctoproject.org>
References: <5Tg.NNol.1AtvAv25bON.1PvACL@seznam.cz>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <b62ec672-bddb-cf0f-759e-38ceb026f190@windriver.com>
Date: Mon, 16 Oct 2017 08:46:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <5Tg.NNol.1AtvAv25bON.1PvACL@seznam.cz>
Subject: Re: pseudo - few general questions
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
X-List-Received-Date: Mon, 16 Oct 2017 13:46:28 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/16/17 7:16 AM, Pavlina Varekova wrote:
> Hi,
> I am evaluating to use pseudo in one project so I have several questions
> regarding the tool.
> 
> As I see in the official home for pseudo's git repository the last commit is
> from 2017-04-13. Is pseudo maintained now and will it be in the future? How
> active the community is?
> 
> From its documentation I know that it is proposed for "provide enough
> functionality to allow RPM and similar tools to run file system installs using
> chroot()". But "implementation is far from complete or perfect". Is pseudo
> suitable to use in automated tests that aim to or can set a broad range or
> combinations of file ownerships?

The component is being actively maintained.  The maintainer is often busy and
general maintenance is not required on a daily basis.. but he does respond to
mailing list messages regularly.

As far as testing goes, I've found that pseudo is better for automated tests
then the combination of fakeroot/fakechroot.  But as indicated there are corner
cases where there may be problems.  If you use it and find one of those corner
cases let us know, as we want to improve it.

--Mark

> Thank you very much.
> 
> Pavlina
> 
> 


