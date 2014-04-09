Return-Path: <Valentin.Cobelea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0CE75E00B88
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 04:05:45 -0700 (PDT)
Received: from localhost.enea.se (192.168.14.171) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Wed, 9 Apr 2014
	13:05:41 +0200
Message-ID: <53452985.7020202@enea.com>
Date: Wed, 9 Apr 2014 14:05:41 +0300
From: Vali Cobelea <valentin.cobelea@enea.com>
Organization: ENEA
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <534416F0.10109@enea.com>
	<9507315.eLP4En45Q5@peggleto-mobl5.ger.corp.intel.com>
	<53452733.2070806@enea.com>
	<33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <33266524.grSQoK8z6t@peggleto-mobl5.ger.corp.intel.com>
X-Originating-IP: [192.168.14.171]
Cc: yocto@yoctoproject.org, Alexandru Vaduva <Alexandru.Vaduva@enea.com>
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
X-List-Received-Date: Wed, 09 Apr 2014 11:05:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

OK Paul, that indeed makes sense, I really did not knew that preliminary 
versions of layers are accepted.
I will discuss around here and if everything goes OK we will start the 
move in the "public" layer index.
I also do agree with an all-together strategy, no matter for the layer 
state.


Much appreciated,
Vali


On 04/09/2014 02:01 PM, Paul Eggleton wrote:
> On Wednesday 09 April 2014 13:55:47 Vali Cobelea wrote:
>> On 04/09/2014 01:51 PM, Paul Eggleton wrote:
>>> On Tuesday 08 April 2014 18:34:08 Vali Cobelea wrote:
>>>> Here at ENEA we decided to take the initiative regarding the CGL
>>>> compliance when it comes to the Yocto Project.
>>>> For this we started the work on a dedicated layer called 'meta-cgl'
>>>>
>>>> which can be accessed / cloned from here:
>>>>     http://git.enea.com/git/?p=linux/meta-cgl.git
>>>>     git clone git@git.enea.com:linux/meta-cgl
>>>>
>>>> Have a look of the things we got there so far, please remember that
>>>> there is still plenty of work to be done (layer architecture, CGL
>>>> requirements coverage mode and so on).
>>>> It is a little bit more than a stub layer, consider it a starting point
>>>> for the direction we would like to have with this layer.
>>>>
>>>> Any input is much appreciated, lets keep the discussion by this email
>>>> thread and see where it goes.
>>> I don't have anything to offer on the layer contents, but I would say in
>>> order to make it easy for people to find this layer I would strongly
>>> encourage you to>
>>> submit it to the OpenEmbedded layer index:
>>>     http://layers.openembedded.org/layerindex/submit/
>> Thank you for the input.
>> We will keep the layer for a short period of time at the current
>> location while getting other ideas regarding the content / architecture.
>> The layer initiative will also be raised up in the board advisory
>> meeting, in order to get even more input.
>> After which we will make it easier to find, access and use for anyone,
>> exactly as you suggested.
> OK, as the maintainer it's totally up to you.
>
> I would say though generally that I'd like to see more people adding their
> work-in-progress layers to the layer index, even if at some time later they
> will be moved elsewhere or absorbed into another layer - it just makes it
> easier to point people to the layer index so they can find recipes that have
> already been written, rather than having to re-write them from scratch.
>
> Cheers,
> Paul
>


