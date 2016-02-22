Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF646E00931; Mon, 22 Feb 2016 05:34:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 738B6E008C6
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 05:34:39 -0800 (PST)
Received: (qmail 10765 invoked by uid 1003); 22 Feb 2016 13:34:38 -0000
Received: from unknown (HELO ?192.168.11.140?)
	(philip@opensdr.com@71.171.13.83)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	22 Feb 2016 13:34:38 -0000
To: "sebastian.rohde@tu-dortmund.de" <sebastian.rohde@tu-dortmund.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <829E1DFECFCA904FBE9BB9228564C2B301412FAA3F@ex2010mbx1.tu-dortmund.de>
	<1989092.7OVe9rXmCs@rjs-zotac.streifs.net>
	<829E1DFECFCA904FBE9BB9228564C2B301412FADD9@ex2010mbx1.tu-dortmund.de>
From: Philip Balister <philip@balister.org>
Message-ID: <56CB0E6A.40805@balister.org>
Date: Mon, 22 Feb 2016 08:34:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <829E1DFECFCA904FBE9BB9228564C2B301412FADD9@ex2010mbx1.tu-dortmund.de>
Cc: Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Package Level Dependencies
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
X-List-Received-Date: Mon, 22 Feb 2016 13:34:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 02/22/2016 08:00 AM, sebastian.rohde@tu-dortmund.de wrote:
> Hi Rudolf,
> 
> Thnx for your input! I guess I can see your point. In particular I wasn't thinking so much on using ".inc" files.
> Due to the fact that I will be having like 10-20 different test123-config-xxx packages managing this using "RCONFLICTS" might be tedious.
> I guess this is what virtual packages (say test123-config-xxx has something like PROVIDES=virtual/test123-config and test123 has a RDEPENDS on virtual/test123-config) are for and I will try to follow this path for now.
> 
> For a couple of reasons, the configuration files are in the same git repository as the source code of "test123". Is there a way of sharing working directories between (at least all config-package recipes, such as I don't net to checkout the whole git repository for each of my 10-20 config packages?

Would selecting the conf file with a MACHINE override help here?

Philip

> 
> Regards,
> Sebastian
> 
> -----Ursprüngliche Nachricht-----
> Von: Rudolf J Streif [mailto:rudolf.streif@gmail.com]
> Gesendet: Montag, 22. Februar 2016 02:38
> An: yocto@yoctoproject.org
> Cc: Rohde, Sebastian <sebastian.rohde@tu-dortmund.de>
> Betreff: Re: [yocto] Package Level Dependencies
> 
> Hi Sebastian,
> 
>> I have a recipe (say: "test123") that provides a complex piece of
>> software (cmake-based). The software needs some configuration file
>> (say "test123.conf"). There are multiple variants of the configuration
>> file, sharing the same name, i.e. "test123.conf" exists in different
>> variants for multiple hardware configurations.
>>
>> My aim would be to have multiple packages like "test123-config-XXX"
>> and "test123-config-YYY", that cannot be installed at the same time,
>> while having one of the packages is a dependency for the main package "test123".
> 
> These are two conflicting packages.
> 
>>
>> Is there a way to achieve this? From my current understanding,
>> dependencies are "per-recipe" and not "per-package". Is there any way
>> to achieve package level dependencies? I would like to avoid having
>> multiple recipes as there are many configuration file options which
>> are currently located in the same large source repository as the main software.
> 
> Look at it from the perspective of conflicting packages.
> 
> My approach to this would be the following:
> 
> 1. Write an include file test123.inc that includes all of the guts of your recipe.
> 
> 2. Write the two recipes test123-config-XXX_1.0.bb and test123-config-
> YYY_1.0.bb:
> 
> test123-config-XXX_1.0.bb
> 
> require test123.inc
> 
> SRC_URI += "test123-XXX.conf"
> 
> do_install_append() {
>    # install config file here
>    install 544 test123-XXX.conf ${D}/<location> }
> 
> RCONFLICTS_${PN} = "test123-config-YYY"
> 
> Analog for test123-config-YYY_1.0.bb
> 
> 
> You are essentially sharing all of the recipe through the test123.inc and only add the config file to the respective target recipe. The RCONFLICTS_${PN} directive will flag an error if both conflicting packages are attempted to be installed.
> 
> BR,
> Rudi
> 
> Wichtiger Hinweis: Die Information in dieser E-Mail ist vertraulich. Sie ist ausschließlich für den Adressaten bestimmt. Sollten Sie nicht der für diese E-Mail bestimmte Adressat sein, unterrichten Sie bitte den Absender und vernichten Sie diese Mail. Vielen Dank.
> Unbeschadet der Korrespondenz per E-Mail, sind unsere Erklärungen ausschließlich final rechtsverbindlich, wenn sie in herkömmlicher Schriftform (mit eigenhändiger Unterschrift) oder durch Übermittlung eines solchen Schriftstücks per Telefax erfolgen.
> 
> Important note: The information included in this e-mail is confidential. It is solely intended for the recipient. If you are not the intended recipient of this e-mail please contact the sender and delete this message. Thank you. Without prejudice of e-mail correspondence, our statements are only legally binding when they are made in the conventional written form (with personal signature) or when such documents are sent by fax.
> 

