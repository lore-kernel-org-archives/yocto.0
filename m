Return-Path: <ola.x.nilsson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69904E00B33; Tue, 24 Sep 2019 03:09:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6A63E0049C
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2019 03:09:48 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 024BC183B8;
	Tue, 24 Sep 2019 12:09:47 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id 0jZysT1_yMOE; Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 4FEA1182B0;
	Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3C2DC1A07E;
	Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 30F1A1A07C;
	Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from xbox05.axis.com (xbox05.axis.com [10.0.15.175])
	by thoth.se.axis.com (Postfix) with ESMTP id 24FD7240;
	Tue, 24 Sep 2019 12:09:46 +0200 (CEST)
Received: from XBOX01.axis.com (10.0.5.15) by xbox05.axis.com (10.0.15.175)
	with Microsoft SMTP Server (TLS) id 15.0.1395.4;
	Tue, 24 Sep 2019 12:09:45 +0200
Received: from lnxolani1 (10.0.5.60) by xbox01.axis.com (10.0.5.15) with
	Microsoft SMTP Server id 15.0.1395.4 via Frontend Transport;
	Tue, 24 Sep 2019 12:09:46 +0200
References: <SC1PR80MB4558AF3F33D9C5835EA7B2B2C18F0@SC1PR80MB4558.lamprd80.prod.outlook.com>
User-agent: mu4e 1.0; emacs 27.0.50
From: Ola x Nilsson <ola.x.nilsson@axis.com>
To: Josias Inacio da Silva Filho <josiasinacio@hotmail.com>
In-Reply-To: <SC1PR80MB4558AF3F33D9C5835EA7B2B2C18F0@SC1PR80MB4558.lamprd80.prod.outlook.com>
Date: Tue, 24 Sep 2019 12:09:45 +0200
Message-ID: <jwqy2yef1jq.fsf@axis.com>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: devtool modify both target and native recipe
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
X-List-Received-Date: Tue, 24 Sep 2019 10:09:50 -0000
Content-Type: text/plain


On Tue, Sep 17 2019, Josias Inacio da Silva Filho wrote:

> I have a recipe that supports building both native and target, however I noticed only one can be modified at a time.
>
> If I try doing:
> $ devtool modify myrecipe path_x
> $ devtool modify myrecipe-native path_x
>
> It complains saying I can only modify one variant at a time.
>
> The way to get around this issue was to go into build/workspace/appends/myrecipe and change this line:
>
> EXTERNALSRC_pn-myrecipe = path_x
>
> To this:
> EXTERNALSRC = path_x
>
> But I wanted to have a proper solution for this. I also saw this comment in the file:
> # NOTE: We use pn- overrides here to avoid affecting multiple variants in the case where the recipe uses BBCLASSEXTEND

Add a line for the native variant so you get:

EXTERNALSRC_pn-myrecipe = path_x
EXTERNALSRC_pn-myrecipe-native = path_x

Note that this will only work if S != B in your recipe, otherwise you
will probably end up with a mishmash of object files of different
architectures.

If you do use different checkouts

EXTERNALSRC_pn-myrecipe = path_x
EXTERNALSRC_pn-myrecipe-native = path_y

will work for S==B, but then you will have to extract the sources some
other way. devtool extract may work here, but I have not tested myself.

-- 
Ola x Nilsson

