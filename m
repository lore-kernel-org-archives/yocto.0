Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9733E00B3E; Thu,  4 Oct 2018 03:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E07DE00ADD
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2018 03:29:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id D115D12B107;
	Thu,  4 Oct 2018 12:29:13 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id EVsHBS7KFNvi; Thu,  4 Oct 2018 12:29:13 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 7053312B135;
	Thu,  4 Oct 2018 12:29:13 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 04 Oct 2018 12:29:13 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Jakob Hasse <jakob.hasse@qiio.com>
In-Reply-To: <bc248826-1929-09f6-f91d-9f16e8a4bc68@qiio.com>
References: <500fb248-a378-fbc6-6fa9-e1d658320651@qiio.com>
	<bc248826-1929-09f6-f91d-9f16e8a4bc68@qiio.com>
Message-ID: <d1e61b0acd90ab337c4e3c0db8d865d9@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.7
Cc: Yocto List <yocto@yoctoproject.org>,
	Andrii Voloshyn <andrii.voloshyn@qiio.com>
Subject: Re: git works standalone, but not within yocto for certain ssh uri format
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
X-List-Received-Date: Thu, 04 Oct 2018 10:29:16 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2018-10-03 08:14, Jakob Hasse wrote:

> Hello again,
> 
> I looked up the git man page and confirmed that the given SSH URI is 
> valid, in fact, the "v3" is just part of the path. No need to 
> explicitly specify a port number. As already mentioned, git works fine 
> when cloning standalone.
> Furthermore, if I add a slash after the colon, the Yocto fetcher works 
> fine:
> 
> SRC_URI = 
> "gitsm://my-company@vs-ssh.visualstudio.com:/v3/my-company/IoTSolutions/my-app"
> 
> Is there a workaround for this problem? Has anyone experienced this 
> before?

No experience with Azure. On Bitbucket, a private Git repo might be 
defined with:

SRC_URI = "git://git@bitbucket.org/<project>/<repo>.git;protocol=ssh"

So in your case I think it should look like:

SRC_URI = 
"gitsm://git@vs-ssh.visualstudio.com/v3/my-company/IoTSolutions/my-app.git;protocol=ssh"

(or try omitting the .git from the SRC_URI)

Regards,

-- Bas.










