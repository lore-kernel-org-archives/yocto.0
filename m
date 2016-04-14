Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BCC4E00CAE; Thu, 14 Apr 2016 02:29:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DDFDE00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 02:29:39 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CsBACbYg9X/0oKEKxehAt9BrwpFw2FagKCAgEBAQEBAYENhEIBAQQBAQEvATsKEQsNCwkWDwkDAgECARUBHhEGAQwGAgKIM8I4AQEBAQYBAQEBHIYhhEuEDxEBHIVYBZgLgVSEI4UshFFOhACDBReFP48phEtqiEY2fgEBAQ
X-IPAS-Result: A2CsBACbYg9X/0oKEKxehAt9BrwpFw2FagKCAgEBAQEBAYENhEIBAQQBAQEvATsKEQsNCwkWDwkDAgECARUBHhEGAQwGAgKIM8I4AQEBAQYBAQEBHIYhhEuEDxEBHIVYBZgLgVSEI4UshFFOhACDBReFP48phEtqiEY2fgEBAQ
To: Philip Balister <philip@balister.org>, <yocto@yoctoproject.org>
References: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
	<1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
	<570EA131.7030100@balister.org>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <570F6323.7040209@skidata.com>
Date: Thu, 14 Apr 2016 11:30:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
MIME-Version: 1.0
In-Reply-To: <570EA131.7030100@balister.org>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: [psplash][PATCH 3/3] README: add "Contributing" guideline
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
X-List-Received-Date: Thu, 14 Apr 2016 09:29:41 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

Hi Philip,

On 04/13/2016 09:42 PM, Philip Balister wrote:
>> +
>> > +Contributing
>> > +============
>> > +To contribute to this layer you should submit the patches for review to the
>> > +mailing list (yocto@yoctoproject.org).
>> > +
>> > +Please refer to
>> > +    http://openembedded.org/wiki/Commit_Patch_Message_Guidelines
>> > +for some useful guidelines to be followed when submitting patches.
>> > +
>> > +Mailing list:
>> > +    https://lists.yoctoproject.org/listinfo/yocto
>> > +
>> > +When creating patches, please use something like:
>> > +    git format-patch -M -s --subject-prefix='psplash][PATCH' origin
>> > +
>> > +When sending patches, please use something like:
>> > +    git send-email --to yocto@yoctoproject.org <generated patch>
>> > 
> I cut and paste this line from the meta-oe README for sending patches,
> it is a bit simpler than the two step process:
> 
> https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/README#L9

The line we are talking about is:
git send-email -M -1 --to openembedded-devel@lists.openembedded.org
--subject-prefix=meta-oe][PATCH
isn't it?

You're right, for one patch this line is simpler/faster. But basically I
like to create the patches first (and be able to review them) and send
them afterwards in a separate step.

Nonetheless if you like to add the "direct" send-email line I would at
least suggest to:
	a) use "origin" as rev instead of "-1"
	b) add "--annotate"

regards,
Richard

