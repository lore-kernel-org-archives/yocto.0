Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 126A3E00861
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 14:19:32 -0800 (PST)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1W6ScT-0000nZ-WB
	for yocto@yoctoproject.org; Thu, 23 Jan 2014 23:19:30 +0100
Received: from pd907e742.dip0.t-ipconnect.de ([217.7.231.66])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 23:19:29 +0100
Received: from gmane by pd907e742.dip0.t-ipconnect.de with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 23:19:29 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 24 Jan 2014 00:19:17 +0200
Message-ID: <52E19565.4080306@reliableembeddedsystems.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: pd907e742.dip0.t-ipconnect.de
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
Subject: fetcher from gitpod
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
X-List-Received-Date: Thu, 23 Jan 2014 22:19:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I would like to fetch some get repos (currently u-boot and kernel) from
a local git caching server[1]. This means if something changed on
git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
since the last invocations it updates the changes, if nothing changed it
provides the repo locally.

After setting up the right ssh keys not to ask for a password it works
like this:

git clone gp@gitpod:linux-stable.git
Cloning into 'linux-stable'...
fetching from
git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
remote: Counting objects: 3572381, done.
remote: Compressing objects: 100% (574164/574164), done.
Receiving objects: 100% (3572381/3572381), 752.89 MiB | 11.53 MiB/s, done.
remote: Total 3572381 (delta 3008721), reused 3531934 (delta 2968274)
Resolving deltas: 100% (3008721/3008721), done.

Should this somehow already work with existing fetchers, or do I need to
hack together my own fetcher?

Regards,

Robert

[1] https://github.com/sitaramc/gitpod..."The problem is never how to
get new, innovative thoughts into your mind, but how to get old ones
out." -- Dee Hock

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



