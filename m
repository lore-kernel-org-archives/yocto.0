Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 945CEE00D61; Mon, 27 Nov 2017 09:20:20 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70AFEE00BEA
	for <yocto@yoctoproject.org>; Mon, 27 Nov 2017 09:20:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vARHKHP6023526
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 27 Nov 2017 09:20:17 -0800 (PST)
Received: from soho-mhatle-m.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 27 Nov 2017 09:20:17 -0800
To: "Burton, Ross" <ross.burton@intel.com>, Hongxu Jia
	<hongxu.jia@windriver.com>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
	<CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <6724ad48-b676-0de9-df72-453272f978f3@windriver.com>
Date: Mon, 27 Nov 2017 11:20:16 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Yang,
	Zhangle \(Eric\)" <Zhangle.Yang@windriver.com>
Subject: Re: Contribute meta-installer to yocto
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
X-List-Received-Date: Mon, 27 Nov 2017 17:20:20 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 11/21/17 3:24 PM, Burton, Ross wrote:
> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com
> <mailto:hongxu.jia@windriver.com>> wrote:
> 
>     If yocto is interested in this layer and will accept it,
>     I could send pull request or some one directly fetch
>     from above github master branch.
> 
> 
> Are you asking for a git repo on git.yoctoproject.org
> <http://git.yoctoproject.org>?  If you want one I believe the process is to ask
> Michael Halstead.  There's no reason why it can't be maintained in this
> repository forever though,  just submit it to the layer index.

The request is for more then just a repository.  (We can get a repository
anywhere..)  What he is asking for is, is this something that the Yocto Project
itself wants to own.  He is still offering to be the maintainer of the layer,
but the project being owned by the Yocto Project itself has more implications.

I.e. using the bugzilla, discussion on the @yoctoproject.org mailing lists,
etc... what happens if he is no longer able to willing to maintain the layer.. etc.

In addition, my understanding is a target based installer has places to insert
logos.  Currently these are blank.  If the Yocto Project wants to be the home
for this, then I would also hope that specific logos would be approved for use
within the default installer instance.

If this is outside of the scope of what the Yocto Project itself wants to own,
then OpenEmbedded is the next place that might see value in this.... if not,
then a github project will be fine.

> Ross


