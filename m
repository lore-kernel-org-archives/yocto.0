Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E077E00DB7; Tue,  5 Nov 2019 07:30:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B259CE00D9E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2019 07:30:08 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id c22so20629121wmd.1
	for <yocto@yoctoproject.org>; Tue, 05 Nov 2019 07:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=gvULalKCcXaJflBHQV27RWAqcQ2EmVkkT9w+QhbRo+4=;
	b=MzEzc7HKLMklbA654WCNce7ROtVhYHpgl762huGk7HK2/bGpAsQJF4O14r8upzf9+c
	23+U4XtUXqNLpZn0j/3nsqr6E2IFSbwdh+m7ZfpPR5GCLn64+pA8QBQ3yAK90Y3Zq8lX
	AMId+fdF8E1M7IWDpOECkSufPD17ENvqn8Q7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=gvULalKCcXaJflBHQV27RWAqcQ2EmVkkT9w+QhbRo+4=;
	b=Gco3dQhzmWBfRbgARPE8z9d4XLlLT1ebTRW8uZe2xjXWEXHuM2507cOgnJzF1SO678
	6FD8jCB2VzHFbe+wi2/C5eGzwQ9Nw0wvgtbDsG5gIGcFde5FeSvQyT3Tb5/8QWhigA9v
	wrSi0Dzn8wHAIxgJckFJ3H7nRSV1lIXQm/Rf1hx1iF4sFL5OzjqcixMjH+GOx1XYeQcx
	NTdVz1CaBTeiElXEYB3S/E+cqqP9ah52qlkFTXg2UFKmkPDzwvUQjipWy9n39TAa1RDQ
	F/8sSapiLc86vX/f5rd6Y2pf845uyjqSaf3W4NXtAjCb0Hy3QJIhbQxUr/5uqzX8tI9z
	jYJg==
X-Gm-Message-State: APjAAAVZ7+XNPKLEhBOXMBpVOrLhOTEH5qjCWjn8CvGe+Qu0MRl4fbDJ
	qzaF1W6jxp5F/V2d7aVprqXvgw==
X-Google-Smtp-Source: APXvYqx1VnrrBY8iVFj+oCuGa16pqixMlwlF22b24WUgYYcQnSC2yaaugvgabv6OYgUxB1907Huu0w==
X-Received: by 2002:a1c:b404:: with SMTP id d4mr5059847wmf.9.1572967807448;
	Tue, 05 Nov 2019 07:30:07 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 205sm147068wmb.3.2019.11.05.07.30.06
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 05 Nov 2019 07:30:06 -0800 (PST)
Message-ID: <a2982b3de70f74fd787b45b06711437afd2ae98e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Samuel Jiang =?UTF-8?Q?=28=E6=B1=9F=E9=A8=8F=E5=85=88=29?=
	<Samuel.Jiang@quantatw.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 05 Nov 2019 15:30:05 +0000
In-Reply-To: <9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 05 Nov 2019 15:30:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2019-11-04 at 02:52 +0000, Samuel Jiang (江騏先) wrote:
> Dear yocto developer,
> The below disscussed about azure devops clone issue including test
> result with Microsoft support team member.
> We wonder know how Bitbake access repository through SSH. Does it
> different between git and Azue DevOps?


Try:

SRC_URI = "git://quanta01@vs-ssh.visualstudio.com/v3/quanta01/OpenBMC/crashdump;protocol=ssh;nobranch=1"

as I think you didn't convert the url to our syntax correctly.

Cheers,

Richard


> Thanks,
> 
> Samuel Jiang
> ---------- Forwarded message ----------
> From: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> v-chucho@microsoft.com>
> Date: 2019年10月31日 PM5:39 [+0800]
> To: Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
> Cc: support <support@mail.support.microsoft.com>, Alex Chong
> (Shanghai Wicresoft Co,.Ltd.) <v-chucho@microsoft.com>
> Subject: RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure
> DevOps repository Azure DevOps Services Basic
> 
> > Hi Samuel,
> > 
> >  
> > 
> > Thank you for reply.
> > 
> >  
> > 
> > I test and read the BitBake doc, let me share with you my finding
> > and analysis.
> > 
> > I have verified that our Azure DevOps Organization Repo could be
> > clone through SSH authentication successfully.
> > I create a new SSH key and add it to Azure DevOps SSH public keys.
> >  
> > 
> > Then I use git clone command and clone this repo successfully. The
> > url is “v-chucho-microsoft@vs-ssh.visualstudio.com:v3/v-chucho-
> > microsoft/testCodeCoverage/testCodeCoverage”
> > 
> > 
> > My testing verify that SSH Authentication is available, and the url
> > given by Azure DevOps is correct.
> > 
> >  
> > 
> > Then I also test it in GitHub, and succeed. The only difference is
> > the url of GitHub is “git@github.com:xxxxxxxxxxxxxxxxxx.git”
> >  
> > 
> > So let’s come back to BitBake. I read more of the BitBake doc.( 
> > https://www.yoctoproject.org/docs/1.8/bitbake-user-manual/bitbake-user-manual.html#bb-fetchers
> > ) . Your command SRC_URI = "git://quanta01@vs-
> > ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump;protocol=ssh;nob
> > ranch=1". The BitBake example is below.
> > 
> > 
> > We can see that the BitBake syntax is like git SSH but not Azure
> > DevOps SSH. Do you try to use this command clone a repo from
> > GitHub?
> > 
> >  
> > 
> > Then I read the doc you shared. The customer also met your issue
> > when trying to clone Azure DevOps repo with SSH url. In my
> > understanding, seems BitBake Git fetcher is good for Git SSH but
> > not ready to access the Azure DevOps SSH.
> > 
> > 
> >  
> > 
> > Action Plan
> > 
> > Could you involve BitBake support team? We can deliver this testing
> > result and consult them how BitBake access Azure DevOps through
> > SSH.
> > 
> >  
> > 
> > If you have any conern or query, please feel free to let me know.
> > 
> >  
> > 
> > Best Regards,
> > 
> >  
> > 
> > Alex Chong
> > 
> >  
> > 
> > 
> > 
> > Support Engineer
> > 
> > Microsoft APAC Developer Support Team
> > 
> > Customer Service & Support (CSS)
> > 
> > Email: v-chucho@microsoft.com
> > 
> > Office: +86 (21) 52638610
> > 
> > Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
> > 
> > Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
> > 
> >  
> > 
> > From: Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
> > Sent: Thursday, October 31, 2019 12:16 PM
> > To: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> > v-chucho@microsoft.com>
> > Cc: support <support@mail.support.microsoft.com>
> > Subject: RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure
> > DevOps repository Azure DevOps Services Basic
> > 
> >  
> > 
> > Hi Alex,
> > 
> > I catch same problem on the yocto mail list
> > link: 
> > https://lists.yoctoproject.org/pipermail/yocto/2018-October/042736.html
> > 
> > when I use SRC_URI = "git://quanta01@vs-
> > ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump;protocol=ssh;nob
> > ranch=1"
> > 
> > the bitbake response below error message:
> > git -c core.fsyncobjectfiles=0 ls-remote 
> > ssh://quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump
> >   failed with exit code 128, output:
> > 
> > ssh: Could not resolve hostname vs-ssh.visualstudio.com:v3: Name or
> > service not known
> > 
> > fatal: Could not read from remote repository.
> > 
> > I think the bitbake call “git ls-remote” command however it could
> > not parser below host vs-ssh.visualstudio.com:v3
> > 
> > Could you help confirm the  “git ls-remote”command could work on
> > ssh method clone with ssh:// prefix?
> > 
> > BTW, the protocol will define the uri prefix, I didn’t find any way
> > removing this prefix.
> > 
> > Thanks,
> > Samuel Jiang
> > 
> >  
> > 
> > From: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> > v-chucho@microsoft.com>
> > Sent: Thursday, October 31, 2019 10:32 AM
> > To: Samuel Jiang (江騏先) <Samuel.Jiang@quantatw.com>
> > Cc: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> > v-chucho@microsoft.com>; support <
> > support@mail.support.microsoft.com>
> > Subject: RE: 119102923000220 use yocto bitbake SRC_URI fetch Azure
> > DevOps repository Azure DevOps Services Basic
> > 
> >  
> > 
> > Hi Samuel,
> > 
> >  
> > 
> > How are you?
> > 
> >  
> > 
> > Do you try our Azure DevOps SSH authentication? Do you contact
> > BitBake support for help? Is there any suggestion or new issue?
> > Please feel free to contact me if there is something I can do for
> > you.
> > 
> >  
> > 
> > Best Regards,
> > 
> >  
> > 
> > Alex Chong
> > 
> >  
> > 
> > 
> > 
> > Support Engineer
> > 
> > Microsoft APAC Developer Support Team
> > 
> > Customer Service & Support (CSS)
> > 
> > Email: v-chucho@microsoft.com
> > 
> > Office: +86 (21) 52638610
> > 
> > Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
> > 
> > Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
> > 
> >  
> > 
> > From: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> > v-chucho@microsoft.com>
> > Sent: Tuesday, October 29, 2019 3:50 PM
> > To: Samuel.Jiang@quantatw.com
> > Cc: Alex Chong (Shanghai Wicresoft Co,.Ltd.) <
> > v-chucho@microsoft.com>
> > Subject: 119102923000220 use yocto bitbake SRC_URI fetch Azure
> > DevOps repository Azure DevOps Services Basic
> > 
> >  
> > 
> >  
> > 
> >  
> > 
> > 
> > 
> >  
> > 
> > Hi Samuel,
> > 
> >  
> > 
> > Thank you for contacting Microsoft.
> > 
> >  
> > 
> > My name is Alex and I am the Microsoft Support Engineer from APGC
> > who will be working with you on this support request . You can
> > reach me using the contact information in my signature.
> > 
> >  
> > 
> > I just called you at +886 3 327 2345 and had a quick discussion.
> > 
> > Issue Description
> > 
> > 1.Customer is using a 3rd-party application BitBake to clone Azure
> > DevOps repo. 
> > 
> > 2.Customer could fetch file from https url successfully.
> > 
> > 3.Customer wants to know whether Azure DevOps support SSH
> > authentication method.
> > 
> >  
> > 
> > Analysis
> > 
> > 1.Yes, Azure DevOps has SSH authentication method. (Reference: 
> > https://docs.microsoft.com/en-us/azure/devops/repos/git/use-ssh-keys-to-authenticate?view=azure-devops
> > )
> > 
> >  Create your SSH keys
> >     Create your SSH keys with the ssh-keygen command from
> > the bash prompt.
> > 
> >  Add the public key to your Azure DevOps Organization
> > Open your security settings by browsing to the web portal and
> > selecting your avatar in the upper right of the user interface.
> > Select Security in the menu that appears.
> > 
> > 
> > 
> > Select SSH public keys , then select +New Key.
> > 
> > 
> > 
> > Copy the contents of the public key (for example, id_rsa.pub) that
> > you generated into the Public Key Data field.
> > 
> >  
> > 
> > 
> > 
> >  
> > 
> >  Clone the Git repository with SSH
> > Copy the SSH clone URL from the web portal. In this example the SSL
> > clone URL is for a repo in an organization named fabrikam-fiber, as
> > indicated by the first part of the URL after dev.azure.com.
> > 
> > 
> > 
> > Run git clone from the command prompt.
> > 
> > My example is git clone v-chucho-microsoft@vs-ssh.visualstudio.com:
> > v3/v-chucho-microsoft/testCodeCoverage/testCodeCoverage
> > 
> >  
> > 
> > 2.Regarding to BitBake. (Reference: 
> > https://www.yoctoproject.org/docs/1.8/bitbake-user-manual/bitbake-user-manual.html#bb-fetchers
> > )
> > 
> > This is a 3rd-party application which is out of our Microsoft
> > support. Our Azure DevOps has SSH authentication method. But I have
> > no experience whether there is such option in BitBake. 
> > 
> > I did some research on this application and find Git fetcher and
> > ssh:// fetcher functionalities. In my understanding, it should
> > support git with SSH or SSH fecher directly. It's suggested to
> > consult BitBake support for more details of these 2 fetchers. If
> > there is something our Microsoft could help, please feel free to
> > involve me directly.
> > 
> > 
> > 
> > 
> > 
> >  
> > 
> > If you have any concern or query, please feel free to contact me.
> > 
> >  
> > 
> > Best Regards,
> > 
> >  
> > 
> > Alex Chong
> > 
> >  
> > 
> > Support Engineer
> > 
> > Microsoft APAC Developer Support Team
> > 
> > Customer Service & Support (CSS)
> > 
> > Email: v-chucho@microsoft.com
> > 
> > Office: +86 (21) 52638610
> > 
> > Time zone: (UTC+08:00) Beijing, Chongqing, Hong Kong, Urumqi
> > 
> > Working time: 9:00am-6:00pm, Mon-Tue-Wed-Thu-Fri
> > 
> >  
> > 
> > 這則來自 Microsoft 的訊息是您或貴公司所購買或參與之計畫、服務或產品的重要部分。請檢閱我們的線上隱私權聲明
> > 
> > Microsoft Corporation
> > One Microsoft Way
> > Redmond, WA, USA 98052
> > 
> > 
> > 


