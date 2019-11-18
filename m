Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A035DE00A07; Mon, 18 Nov 2019 06:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2CEFE0097D
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 06:54:05 -0800 (PST)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xAIErgqA013918
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 18 Nov 2019 08:53:44 -0600
To: www <ouyangxuan10@163.com>, yocto@yoctoproject.org
References: <7e909544.3fb7.16e62fe3433.Coremail.ouyangxuan10@163.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <88107a08-1914-9abc-85be-b5ab3dc911b4@kernel.crashing.org>
Date: Mon, 18 Nov 2019 08:53:42 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <7e909544.3fb7.16e62fe3433.Coremail.ouyangxuan10@163.com>
Subject: Re: :how to solve the basehash value changed from 'xxx' to 'aaaa' ?
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
X-List-Received-Date: Mon, 18 Nov 2019 14:54:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

You are changing the value of something in there dynamically.  Most likely
you've done something like embed the current date and time.

If you do something like that, you need to evaluate it -once- during parse time
and not again.  This will fix the hash value at parse time and not change it later.

--Mark

On 11/12/19 10:20 PM, www wrote:
> Dear all,
> 
> When I modify the os-release file in my yocto project, it appear some error, and
> how can I solve it ? Who can give me some help or advice? Thank you！
> I carried out the recommended order and it didn't work.
> 
> /ERROR: os-release-1.0-r0 do_compile: Taskhash mismatch
> ce133f0458608e03aa55224df28156e523e54903115efbbcd62946f84a867201 versus
> 7269881f0eb1759ed420a2db4c04fb477cd8c1288bc5f82df5c8161bb926ea1f for
> /home/temp/wanghp/wsp/git_s/local-source/obmc-sugon/entity_fruu/meta/recipes-core/os-release/os-release.bb.do_compile/
> /ERROR: Taskhash mismatch
> ce133f0458608e03aa55224df28156e523e54903115efbbcd62946f84a867201 versus
> 7269881f0eb1759ed420a2db4c04fb477cd8c1288bc5f82df5c8161bb926ea1f for
> /home/temp/wanghp/wsp/git_s/local-source/obmc-sugon/entity_fruu/meta/recipes-core/os-release/os-release.bb.do_compile/
> /ERROR: When reparsing
> /home/temp/wanghp/wsp/git_s/local-source/obmc-sugon/entity_fruu/meta/recipes-core/os-release/os-release.bb.do_compile,// //the
> basehash value changed from
> 99a42a1a3b1a151de604267b159558ecaf1031a3bec8917df132c81302e729a5 to
> 4f3288a8763e2e1af78e4b3cdd9c0c0ccb3b0d5c78a3073c188b22200df2a9b0.// //The
> metadata is not deterministic and this needs to be fixed./
> /ERROR: The following commands may help:/
> /ERROR: $ bitbake os-release -cdo_compile -Snone/
> /ERROR: Then:/
> /ERROR: $ bitbake os-release -cdo_compile -Sprintdiff/
> 
> /ERROR: When reparsing
> /home/temp/wanghp/wsp/git_s/local-source/obmc-sugon/entity_fruu/meta/recipes-core/os-release/os-release.bb.do_compile, //the
> basehash value changed from
> 99a42a1a3b1a151de604267b159558ecaf1031a3bec8917df132c81302e729a5 to
> 47c30012daa6aa77be09a93fe21e66995361ef26b4487111005617db8cb4de59. The metadata
> is not deterministic and this needs to be fixed./
> /ERROR: The following commands may help:/
> /ERROR: $ bitbake os-release -cdo_compile -Snone/
> /ERROR: Then:/
> /ERROR: $ bitbake os-release -cdo_compile -Sprintdiff/
> 
> thanks,
> Byron
> 
> 
> 
>  
> 
> 

