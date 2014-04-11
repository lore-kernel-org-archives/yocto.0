Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64C07E00CE9
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 05:46:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3BCk0TX021237
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 05:46:00 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 05:45:59 -0700
Message-ID: <5347E401.2050804@windriver.com>
Date: Fri, 11 Apr 2014 08:45:53 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Vali Cobelea <valentin.cobelea@enea.com>, Diego Sueiro
	<diego.sueiro@gmail.com>
References: <534416F0.10109@enea.com>	<9507315.eLP4En45Q5@peggleto-mobl5.ger.corp.intel.com>	<53452733.2070806@enea.com>	<33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>	<53452985.7020202@enea.com>	<CAMCfZKG4BdGfkwa-uhoLUe8m7PKc_NUC=ciDi2GXCsCqDmmi+Q@mail.gmail.com>
	<534793A2.2000603@enea.com>
In-Reply-To: <534793A2.2000603@enea.com>
Cc: yocto@yoctoproject.org, Alexandru Vaduva <Alexandru.Vaduva@enea.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Fri, 11 Apr 2014 12:46:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-11 03:02 AM, Vali Cobelea wrote:
> Hi Diego,
>
> Thank you for your interest in the meta-cgl layer.
> Please be aware that the layer is in its alpha state, as I said an
> initiative that started with a layer.
>
> The branch is 'master', no custom things yet.
> Below you can find the instructions to clone all of the "dependency layers":
>
> git clonegit://git.yoctoproject.org/meta-qt3
> <http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-qt3?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
> git clonegit://git.yoctoproject.org/meta-virtualization
> <http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-virtualization?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
> git clonegit://git.yoctoproject.org/meta-selinux
> <http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-selinux?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
> git clonegit://git.yoctoproject.org/meta-cloud-services
> <http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-cloud-services?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
> git clonegit://git.yoctoproject.org/meta-security
> <http://twiki.enea.se/twiki/bin/edit/Git://git/yoctoproject/org/Meta-security?topicparent=EETeng.EneaLinuxCGLBuildInstructions;nowysiwyg=0>
> git clonehttps://github.com/joaohf/meta-openclovis.git
>
> Also, since there are duplicated recipes in these layers, please add the
> following BBMASK in cong/local.conf  (big thank you to Alex Vaduva for
> this):
>
> BBMASK =
> "meta-cloud-services/meta-openstack/recipes-support/lvm2|meta-security/recipes-security/libcap-ng"
>

What exactly are you finding with lvm2 in meta-cloud-services ?

Bruce

>
> Let me know how the test goes Deigo.
>
>
> Best regards,
> Vali
>
> On 04/11/2014 12:35 AM, Diego Sueiro wrote:
>>
>> Vali,
>>
>> I'm excited to see CGL support for Yocto.
>> I'm going to test this layer as soon as possible.
>>
>> One question, which branch of Yocto is it based on?
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>> sent from mobile.
>>
>> On Apr 9, 2014 11:05 AM, "Vali Cobelea" <valentin.cobelea@enea.com
>> <mailto:valentin.cobelea@enea.com>> wrote:
>>
>>     OK Paul, that indeed makes sense, I really did not knew that
>>     preliminary versions of layers are accepted.
>>     I will discuss around here and if everything goes OK we will start
>>     the move in the "public" layer index.
>>     I also do agree with an all-together strategy, no matter for the
>>     layer state.
>>
>>
>>     Much appreciated,
>>     Vali
>>
>>
>>     On 04/09/2014 02:01 PM, Paul Eggleton wrote:
>>
>>         On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:
>>
>>             On 04/09/2014 01:51 PM, Paul Eggleton wrote:
>>
>>                 On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:
>>
>>                     Here at ENEA we decided to take the initiative
>>                     regarding the CGL
>>                     compliance when it comes to the Yocto Project.
>>                     For this we started the work on a dedicated layer
>>                     called 'meta-cgl'
>>
>>                     which can be accessed / cloned from here:
>>                     http://git.enea.com/git/?p=linux/meta-cgl.git
>>                         git clone git@git.enea.com:linux/meta-cgl
>>
>>                     Have a look of the things we got there so far,
>>                     please remember that
>>                     there is still plenty of work to be done (layer
>>                     architecture, CGL
>>                     requirements coverage mode and so on).
>>                     It is a little bit more than a stub layer,
>>                     consider it a starting point
>>                     for the direction we would like to have with this
>>                     layer.
>>
>>                     Any input is much appreciated, lets keep the
>>                     discussion by this email
>>                     thread and see where it goes.
>>
>>                 I don't have anything to offer on the layer contents,
>>                 but I would say in
>>                 order to make it easy for people to find this layer I
>>                 would strongly
>>                 encourage you to>
>>                 submit it to the OpenEmbedded layer index:
>>                 http://layers.openembedded.org/layerindex/submit/
>>
>>             Thank you for the input.
>>             We will keep the layer for a short period of time at the
>>             current
>>             location while getting other ideas regarding the content /
>>             architecture.
>>             The layer initiative will also be raised up in the board
>>             advisory
>>             meeting, in order to get even more input.
>>             After which we will make it easier to find, access and use
>>             for anyone,
>>             exactly as you suggested.
>>
>>         OK, as the maintainer it's totally up to you.
>>
>>         I would say though generally that I'd like to see more people
>>         adding their
>>         work-in-progress layers to the layer index, even if at some
>>         time later they
>>         will be moved elsewhere or absorbed into another layer - it
>>         just makes it
>>         easier to point people to the layer index so they can find
>>         recipes that have
>>         already been written, rather than having to re-write them from
>>         scratch.
>>
>>         Cheers,
>>         Paul
>>
>>
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>


