Return-Path: <Stuart.Weaver@datapath.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3078E00CC6; Tue, 29 Sep 2015 02:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.245.231.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta5.messagelabs.com (mail1.bemta5.messagelabs.com
	[195.245.231.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E906E00A81
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 02:38:15 -0700 (PDT)
Received: from [85.158.139.19] by server-1.bemta-5.messagelabs.com id
	66/15-32615-60C5A065; Tue, 29 Sep 2015 09:38:14 +0000
X-Env-Sender: Stuart.Weaver@datapath.co.uk
X-Msg-Ref: server-5.tower-178.messagelabs.com!1443519494!55224023!1
X-Originating-IP: [77.107.122.35]
X-StarScan-Received: 
X-StarScan-Version: 6.13.16; banners=datapath.co.uk,-,-
X-VirusChecked: Checked
Received: (qmail 6665 invoked from network); 29 Sep 2015 09:38:14 -0000
Received: from unknown (HELO LEICESTER.internal.datapath.co.uk) (77.107.122.35)
	by server-5.tower-178.messagelabs.com with AES128-SHA encrypted SMTP;
	29 Sep 2015 09:38:14 -0000
Received: from LEICESTER.internal.datapath.co.uk ([::1]) by
	LEICESTER.internal.datapath.co.uk ([::1]) with mapi id 14.03.0248.002;
	Tue, 29 Sep 2015 10:38:12 +0100
From: Stuart Weaver <Stuart.Weaver@datapath.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: yocto Digest, Vol 60, Issue 78
Thread-Index: AQHQ+iASxOUnWmqgpk6ch7SG2iKQhZ5TOJsw
Date: Tue, 29 Sep 2015 09:38:12 +0000
Message-ID: <2DCC166D4F5C8443941662E1E67FD5C17871C98D@LEICESTER.internal.datapath.co.uk>
References: <mailman.7.1443466802.26370.yocto@yoctoproject.org>
In-Reply-To: <mailman.7.1443466802.26370.yocto@yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.20.0.187]
MIME-Version: 1.0
Subject: Re: yocto Digest, Vol 60, Issue 78
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
X-List-Received-Date: Tue, 29 Sep 2015 09:38:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Many thanks for your answers Gary/Daniel,=20

Gary- I've tried:
=09=09 SRC_URI_append_image-name2 =3D "file://XYZ.patch"
=09But no luck, when building the image it seems to skip over it with no p=
atching occurring. I can't use the ${MACHINE} variable as the two images w=
ill be for the same ${MACHINE}


Daniel- with a .bbappend, to my knowledge I wouldn't be able to include it=
 to just one image.=20

My "perfect" solution would be to find a variable out there that will copy=
/refer to a current recipe and add the details into the new recipe with it=
's own ${S} etc... Of course I could just copy one to another, but then th=
ere's the problem of updating files later on. Therefore, unless there is a=
nother option that I haven't considered, I might look at refactoring every=
thing into a .inc file and have two different  recipe names of which I can=
 then include seperately in the respective images.

Many Thanks,
Stuart Weaver

>
>On 2015-09-28 11:59, Daniel. wrote:
>> I think you're searching for .bbappend don't?
>
>Shouldn't be any need for that - it's his recipe, so he can modify it as =
he
>wishes.
>One uses .bbappend to made changes/additions to a recipe where you don't
>want (or
>can't) modify the original.
>
>>
>> http://www.yoctoproject.org/docs/current/dev-manual/dev-
>manual.html#us
>> ing-bbappend-files
>>
>> Or, maybe, put all the common things in a .inc file, create the recipes=
,
>include the files in recipes. There is also a lot of examples of this:
>> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-bsp/hosta
>> p/
>>
>> Cheers,
>> - dhs
>>
>> 2015-09-28 12:46 GMT-03:00 Gary Thomas <gary@mlbassoc.com
><mailto:gary@mlbassoc.com>>:
>>
>>     On 2015-09-28 09:30, Stuart Weaver wrote:
>>
>>         Hi all,
>>
>>         I have a recipe for a package which builds well. I now need to =
add a
>patch into certain builds. What is the best way to do this?
>>
>>         1.Is there a variable I can append the image name to (similar
>> to:/SRC_URI_image-name/)?//
>>
>>         2.Is there a way of creating a new ?recipe 2? that obtains the =
details
>from ?recipe 1? and applies a patch? This way I can then simply add the n=
ew
>recipe into any builds I
>>         want and
>>         includes any future changes I make to ?recipe 1?. This solution=
 also
>means not having to continuously reconfigure/recompile the original recip=
e!
>>
>>         3.Do I have to do it the hard way and copy the whole .bb file i=
nto a new
>one and make sure everything is in sync when future updates are applied?
>>
>>
>>     If it's just a patch, the simplest way is to use something like thi=
s:
>>        SRC_URI_append_XYZ =3D "file://XYZ.patch"
>>     where XYZ is something which can identify the override.  One exampl=
e
>>     might be where XYZ is the name of a target board (${MACHINE})
>>
>>     There are many examples of this usage in the Poky/Yocto tree(s)
>>
>>     --
>>     ------------------------------------------------------------
>>     Gary Thomas                 |  Consulting for the
>>     MLB Associates              |    Embedded world
>>     ------------------------------------------------------------
>>     --
>>     _______________________________________________
>>     yocto mailing list
>>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> /"Do or do not. There is no try"/
>> ///*Yoda Master*/
>>
>>
>
>--
>------------------------------------------------------------
>Gary Thomas                 |  Consulting for the
>MLB Associates              |    Embedded world
>------------------------------------------------------------



Regards,
Stuart Weaver

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

