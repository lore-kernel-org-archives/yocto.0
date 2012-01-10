Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11648E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 04:03:12 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DEB51F81237; Tue, 10 Jan 2012 05:03:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 57B08F81235;
	Tue, 10 Jan 2012 05:03:09 -0700 (MST)
Message-ID: <4F0C28FD.3010402@mlbassoc.com>
Date: Tue, 10 Jan 2012 05:03:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
In-Reply-To: <8B3C6E23-C3B9-4CEF-A1E0-2B91F8D17EFE@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: understanding what's in an image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 12:03:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-09 17:51, James Abernathy wrote:
> I'm trying to understand how bitbake parses the poky directory tree a little better.
>
> The best I can figure all .bb files are NOT included. Just some of them are.  I'm guessing that the .bb in the meta/recipe-sato named core-image-sato.bb is the one that is used to start the parsing if bitbake core-image-sato is executed.
> I originally thought all subdirectories of a path included in BBLAYER were parsed looking for .bb files, but now I know that is not true, but not sure why.
>
> For example, it does not appear that webkit is included in the core-image-sato even though the recipe-sato directory includes the webkit subdirectory with it's recipe.  What would be the proper way of adding the webkit to core-image-sato??

The 'webkit' is just a library used to build tools such as a
web browser.  You might want to start with an application that
actually uses webkit, such as web-webkit.

To build an image which includes web-webkit, add this line to
your local.conf file and rebuild the image:
   IMAGE_INSTALL += "web-webkit"

You can also build packages which are not installed into your
image by default and use a package manager (e.g. zypper) to
install the package later onto a running system.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

