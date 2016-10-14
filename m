Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90E9EE0045D; Fri, 14 Oct 2016 11:13:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.197.30.127 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Oct 2016 11:13:07 PDT
Received: from smtp-3.concepts.nl (smtp-3.concepts.nl [213.197.30.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D083E00444
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 11:13:07 -0700 (PDT)
Received: from [2001:838:2:1::30:241] (helo=webmail.xmsnet.nl)
	by smtp-3.concepts.nl with esmtp (Exim 4.80.1)
	(envelope-from <winfried.dobbe@xmsnet.nl>)
	id 1bv6k0-000Bid-9k; Fri, 14 Oct 2016 19:57:56 +0200
MIME-Version: 1.0
Date: Fri, 14 Oct 2016 19:58:56 +0200
From: winfried.dobbe@xmsnet.nl
To: yocto@yoctoproject.org
Mail-Reply-To: winfried.dobbe@xmsnet.nl
Message-ID: <96bd4b5e975da8fa8fb7d8d52ed3d03e@xmsnet.nl>
X-Sender: winfried.dobbe@xmsnet.nl
User-Agent: Roundcube Webmail/1.0.3
X-Concepts-MailScanner-Information: Please contact abuse@concepts.nl for more
	information
X-Concepts-MailScanner-ID: 1bv6k0-000Bid-9k
X-Concepts-MailScanner: Found to be clean
X-Concepts-MailScanner-SpamCheck: 
X-Concepts-MailScanner-From: winfried.dobbe@xmsnet.nl
Subject: [meta-mingw] Patch needed to let linker find lto plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: winfried.dobbe@xmsnet.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Oct 2016 18:13:09 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Recently the meta-mingw layer was updated to krogoth by Juro Bystricky. 
Thanks !
However when I build it as-is, the linker fails because it can't load 
the lto plugin.

After applying commit a06e473590207f72b11d273a09de2c8a889c381e from 
meta-mingw-contrib (by Mark Hatle), the error disappeared.

See: 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-mingw-contrib/commit/?h=mgh/jetho/meta-mingw&id=a06e473590207f72b11d273a09de2c8a889c381e

I think this patch needs to be applied also to the meta-mingw main 
repository.

regards,
W. Dobbe

