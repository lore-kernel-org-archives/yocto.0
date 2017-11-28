Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0ACC5E00C0E; Mon, 27 Nov 2017 17:16:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E451E00B1E;
	Mon, 27 Nov 2017 17:16:30 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vAS1GSXr028604
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Mon, 27 Nov 2017 17:16:28 -0800
Received: from [128.224.162.151] (128.224.162.151) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 27 Nov 2017 17:16:27 -0800
To: Mark Hatle <mark.hatle@windriver.com>, "Burton, Ross"
	<ross.burton@intel.com>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
References: <bfbfad0b-af40-5448-4aed-fc70eeb95c6c@windriver.com>
	<7bdd24ea-febf-86b4-e770-6f7533205d73@windriver.com>
	<CAJTo0LZfkd2SbTrXL6ggt9_NQbDUfEDVLTaaqc8sPwaUihfRUw@mail.gmail.com>
	<6724ad48-b676-0de9-df72-453272f978f3@windriver.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
Message-ID: <8de05b5e-bdbd-059e-780f-bb323d71c318@windriver.com>
Date: Tue, 28 Nov 2017 09:19:04 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <6724ad48-b676-0de9-df72-453272f978f3@windriver.com>
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
X-List-Received-Date: Tue, 28 Nov 2017 01:16:32 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2017年11月28日 01:20, Mark Hatle wrote:
> On 11/21/17 3:24 PM, Burton, Ross wrote:
>> On 21 November 2017 at 08:55, Hongxu Jia <hongxu.jia@windriver.com
>> <mailto:hongxu.jia@windriver.com>> wrote:
>>
>>      If yocto is interested in this layer and will accept it,
>>      I could send pull request or some one directly fetch
>>      from above github master branch.
>>
>>
>> Are you asking for a git repo on git.yoctoproject.org
>> <http://git.yoctoproject.org>?  If you want one I believe the process is to ask
>> Michael Halstead.  There's no reason why it can't be maintained in this
>> repository forever though,  just submit it to the layer index.
> The request is for more then just a repository.  (We can get a repository
> anywhere..)  What he is asking for is, is this something that the Yocto Project
> itself wants to own.  He is still offering to be the maintainer of the layer,
> but the project being owned by the Yocto Project itself has more implications.
>
> I.e. using the bugzilla, discussion on the @yoctoproject.org mailing lists,
> etc... what happens if he is no longer able to willing to maintain the layer.. etc.
>
> In addition, my understanding is a target based installer has places to insert
> logos.  Currently these are blank.  If the Yocto Project wants to be the home
> for this, then I would also hope that specific logos would be approved for use
> within the default installer instance.
>
> If this is outside of the scope of what the Yocto Project itself wants to own,
> then OpenEmbedded is the next place that might see value in this.... if not,
> then a github project will be fine.

Update the status:

I have applied the request to Michael, and he replied.

As he asked, I submit the code to
ssh://git@push.yoctoproject.org/meta-anaconda

And Michael waits for Richard's approval.

//Hongxu

>> Ross
>


