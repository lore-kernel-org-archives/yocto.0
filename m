Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0B5AE00DB6; Tue,  5 Nov 2019 06:22:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EDCFE0083C
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 06:22:55 -0800 (PST)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id xA5EMgwp020818
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Tue, 5 Nov 2019 08:22:43 -0600
To: =?UTF-8?B?U2FtdWVsIEppYW5nICjmsZ/pqI/lhYgp?= <Samuel.Jiang@quantatw.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <9f4a232c-fe6e-f49c-ce5d-9a4307c2b896@kernel.crashing.org>
Date: Tue, 5 Nov 2019 08:22:42 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
Cc: Alex Chong <v-chucho@microsoft.com>
Subject: Re: bitbake SRC_URI fetch Azure DevOps repository Azure DevOps Services Basic
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
X-List-Received-Date: Tue, 05 Nov 2019 14:22:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

When cloning a repository using the builtin fetcher that is git based, the
default protocol is 'git'.

If you want to use an alternative protocol, such as http or ssh, you must
specify the protocol to use.

In your example below, you have specified http:

SRC_URI = "git://git.oe.handhelds.org/git/vip.git;protocol=http"

Change the http to 'ssh' to switch to that protocol.  Note, for the fetcher the
system MUST be able to automatically login without user interaction.  This means
that you must have authorized keys enabled.

Note, ssh is not suggested as a protocol -- except for internal private
development -- because you can't easily share you recipes with others.  Many
corporations block ssh, and will only allow http via a proxy.

--Mark

On 11/3/19 8:52 PM, Samuel Jiang (江騏先) wrote:
> Dear yocto developer,
> The below disscussed about azure devops clone issue including test result with
> Microsoft support team member.
> We wonder know how Bitbake access repository through SSH. Does it different
> between git and Azue DevOps?
> 
> Thanks,
> 
> Samuel Jiang
> ---------- Forwarded message ----------
> *From:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>
> *Date:* 2019年10月31日 PM5:39 [+0800]
> *To:* Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
> *Cc:* support <support@mail.support.microsoft.com>, Alex Chong (Shanghai
> Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>
> *Subject:* RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure DevOps
> repository Azure DevOps Services Basic
> 
>> Hi Samuel,
>>
>>  
>>
>> Thank you for reply.
>>
>>  
>>
>> I test and read the BitBake doc, let me share with you my finding and analysis.
>>
>>  1. I have verified that our Azure DevOps Organization Repo could be clone
>>     through SSH authentication successfully. 
>>
>>  1. I create a new SSH key and add it to Azure DevOps SSH public keys. 
>>
>>  2. Then I use git clone command and clone this repo successfully. The url is
>>     “v-chucho-microsoft@vs-ssh.visualstudio.com:v3/v-chucho-microsoft/testCodeCoverage/testCodeCoverage”
>>
>>
>> My testing verify that SSH Authentication is available, and the url given by
>> Azure DevOps is correct.
>>
>>  
>>
>>  2. Then I also test it in GitHub, and succeed. The only difference is the url
>>     of GitHub is “git@github.com:xxxxxxxxxxxxxxxxxx.git” 
>>
>>  
>>
>>  3. So let’s come back to BitBake. I read more of the BitBake doc.(
>>     https://www.yoctoproject.org/docs/1.8/bitbake-user-manual/bitbake-user-manual.html#bb-fetchers)
>>     . Your command SRC_URI =
>>     "git://quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump;protocol=ssh;nobranch=1".
>>     The BitBake example is below. 
>>
>> We can see that the BitBake syntax is like git SSH but not Azure DevOps SSH.
>> Do you try to use this command clone a repo from GitHub?
>>
>>  
>>
>>  4. Then I read the doc you shared. The customer also met your issue when
>>     trying to clone Azure DevOps repo with SSH url. In my understanding, seems
>>     BitBake Git fetcher is good for Git SSH but not ready to access the Azure
>>     DevOps SSH. 
>>
>>  
>>
>> *_Action Plan_*
>>
>> Could you involve BitBake support team? We can deliver this testing result and
>> consult them how BitBake access Azure DevOps through SSH.
>>
>>  
>>
>> If you have any conern or query, please feel free to let me know.
>>
>>  
>>
>> Best Regards,
>>
>>  
>>
>> Alex Chong
>>
>>  
>>
>> image001
>>
>> Support Engineer
>>
>> Microsoft APAC Developer Support Team
>>
>> Customer Service & Support (CSS)
>>
>> Email: v-chucho@microsoft.com <mailto:v-chucho@microsoft.com>
>>
>> Office: +86 (21) 52638610
>>
>> Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
>>
>> Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
>>
>>  
>>
>> *From:* Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
>> *Sent:* Thursday, October 31, 2019 12:16 PM
>> *To:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>
>> *Cc:* support <support@mail.support.microsoft.com>
>> *Subject:* RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure DevOps
>> repository Azure DevOps Services Basic
>>
>>  
>>
>> Hi Alex,
>>
>> I catch same problem on the yocto mail list
>> link: https://lists.yoctoproject.org/pipermail/yocto/2018-October/042736.html
>> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.yoctoproject.org%2Fpipermail%2Fyocto%2F2018-October%2F042736.html&data=02%7C01%7Cv-chucho%40microsoft.com%7C5b51185a798a4fdf6cd608d75db90d70%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637080921717407210&sdata=Uf0%2Fq1FwlmsXRaoFfMbDfpiWKNzN3MgBlgZXphM3jwo%3D&reserved=0>
>>
>> when I use SRC_URI =
>> "git://quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump;protocol=ssh;nobranch=1"
>>
>> the bitbake response below error message:
>> git -c core.fsyncobjectfiles=0 ls-remote
>> ssh://quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump  failed
>> with exit code 128, output:
>>
>> ssh: Could not resolve hostname vs-ssh.visualstudio.com:v3: Name or service
>> not known
>>
>> fatal: Could not read from remote repository.
>>
>> I think the bitbake call “git ls-remote” command however it could not parser
>> below host vs-ssh.visualstudio.com:v3
>>
>> Could you help confirm the  “git ls-remote”command could work on ssh method
>> clone with ssh:// prefix?
>>
>> BTW, the protocol will define the uri prefix, I didn’t find any way removing
>> this prefix.
>>
>> Thanks,
>> Samuel Jiang
>>
>>  
>>
>> *From:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>
>> *Sent:* Thursday, October 31, 2019 10:32 AM
>> *To:* Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
>> *Cc:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>;
>> support <support@mail.support.microsoft.com>
>> *Subject:* RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure DevOps
>> repository Azure DevOps Services Basic
>>
>>  
>>
>> Hi Samuel,
>>
>>  
>>
>> How are you?
>>
>>  
>>
>> Do you try our Azure DevOps SSH authentication? Do you contact BitBake support
>> for help? Is there any suggestion or new issue? Please feel free to contact me
>> if there is something I can do for you.
>>
>>  
>>
>> Best Regards,
>>
>>  
>>
>> Alex Chong
>>
>>  
>>
>> image001
>>
>> Support Engineer
>>
>> Microsoft APAC Developer Support Team
>>
>> Customer Service & Support (CSS)
>>
>> Email: v-chucho@microsoft.com <mailto:v-chucho@microsoft.com>
>>
>> Office: +86 (21) 52638610
>>
>> Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
>>
>> Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
>>
>>  
>>
>> *From:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com
>> <mailto:v-chucho@microsoft.com>>
>> *Sent:* Tuesday, October 29, 2019 3:50 PM
>> *To:* Samuel.Jiang@quantatw.com <mailto:Samuel.Jiang@quantatw.com>
>> *Cc:* Alex Chong (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com
>> <mailto:v-chucho@microsoft.com>>
>> *Subject:* 119102923000220 use yocto bitbake SRC_URI fetch Azure DevOps
>> repository Azure DevOps Services Basic
>>
>>  
>>
>>  
>>
>>  
>>
>> Image removed by sender. 郵件模板標頭
>>
>>  
>>
>> Hi Samuel,
>>
>>  
>>
>> Thank you for contacting Microsoft.
>>
>>  
>>
>> My name is Alex and I am the Microsoft Support Engineer from APGC who will be
>> working with you on this support request . You can reach me using the contact
>> information in my signature.
>>
>>  
>>
>> I just called you at +886 3 327 2345 and had a quick discussion.
>>
>> *_Issue Description_*
>>
>> 1.Customer is using a 3rd-party application BitBake to clone Azure DevOps repo. 
>>
>> 2.Customer could fetch file from https url successfully.
>>
>> 3.Customer wants to know whether Azure DevOps support SSH authentication method.
>>
>>  
>>
>> *_Analysis_*
>>
>> 1.Yes, Azure DevOps has SSH authentication method. (Reference:
>> https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops
>> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fazure%2Fdevops%2Frepos%2Fgit%2Fuse-ssh-keys-to-authenticate%3Fview%3Dazure-devops&data=02%7C01%7Cv-chucho%40microsoft.com%7C5b51185a798a4fdf6cd608d75db90d70%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637080921717417205&sdata=RT5w4vibwi5VapG3Sr8cDthwGeu%2BudWf98s9FdsbxP4%3D&reserved=0>)
>>
>>   * Create your SSH keys
>>
>>     Create your SSH keys with the |ssh-keygen| command from the |bash| prompt.
>>
>>   * Add the public key to your Azure DevOps Organization
>>
>> Open your security settings by browsing to the web portal and selecting your
>> avatar in the upper right of the user interface. Select Security in the menu
>> that appears.
>>
>> Select SSH public keys , then select +New Key.
>>
>> Copy the contents of the public key (for example, id_rsa.pub) that you
>> generated into the Public Key Data field.
>>
>>  
>>
>>  
>>
>>   * Clone the Git repository with SSH
>>
>> Copy the SSH clone URL from the web portal. In this example the SSL clone URL
>> is for a repo in an organization named fabrikam-fiber, as indicated by the
>> first part of the URL after dev.azure.com.
>>
>> Run git clone from the command prompt.
>>
>> My example is /git clone/
>> /v-chucho-microsoft@vs-ssh.visualstudio.com:v3/v-chucho-microsoft/testCodeCoverage/testCodeCoverage/
>> <mailto:v-chucho-microsoft@vs-ssh.visualstudio.com:v3/v-chucho-microsoft/testCodeCoverage/testCodeCoverage>
>>
>>  
>>
>> 2.Regarding to BitBake. (Reference:
>> https://www.yoctoproject.org/docs/1.8/bitbake-user-manual/bitbake-user-manual.html#bb-fetchers
>> <https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.yoctoproject.org%2Fdocs%2F1.8%2Fbitbake-user-manual%2Fbitbake-user-manual.html%23bb-fetchers&data=02%7C01%7Cv-chucho%40microsoft.com%7C5b51185a798a4fdf6cd608d75db90d70%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637080921717417205&sdata=pAVBdFRKoXlV2dcCBZi4aHVvIWN%2BfLYhnXg2Yf1fbYY%3D&reserved=0>)
>>
>> This is a 3rd-party application which is out of our Microsoft support. Our
>> Azure DevOps has SSH authentication method. But I have no experience
>> whether there is such option in BitBake. 
>>
>> I did some research on this application and find Git fetcher and ssh://
>> fetcher functionalities. In my understanding, it should support git with SSH
>> or SSH fecher directly. It's suggested to consult BitBake support for more
>> details of these 2 fetchers. If there is something our Microsoft could help,
>> please feel free to involve me directly.
>>
>>  
>>
>> If you have any concern or query, please feel free to contact me.
>>
>>  
>>
>> Best Regards,
>>
>>  
>>
>> Alex Chong
>>
>>  
>>
>> Support Engineer
>>
>> Microsoft APAC Developer Support Team
>>
>> Customer Service & Support (CSS)
>>
>> Email: v-chucho@microsoft.com <mailto:v-chucho@microsoft.com>
>>
>> Office: +86 (21) 52638610
>>
>> Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
>>
>> Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
>>
>>  
>>
>> 這則來自 Microsoft 的訊息是您或貴公司所購買或參與之計畫、服務或產品的重要部
>> 分。請檢閱我們的線上隱私權聲明 <https://go.microsoft.com/fwlink/?LinkId=521839>
>>
>> Microsoft Corporation
>> One Microsoft Way
>> Redmond, WA, USA 98052
>>
>> Image removed by sender. Microsoft
>>
> 

