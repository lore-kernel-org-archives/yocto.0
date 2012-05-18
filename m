Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A7E3E01422
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 02:00:38 -0700 (PDT)
Received: from [192.168.0.45] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 26E8248442
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 09:56:27 +0100 (BST)
Message-ID: <4FB60FDF.3040504@communistcode.co.uk>
Date: Fri, 18 May 2012 10:01:19 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFqH_53V8xEibzh7H5m-LEAm1N1-VmDubM4qrb2GBmF2Tc6G9g@mail.gmail.com>
In-Reply-To: <CAFqH_53V8xEibzh7H5m-LEAm1N1-VmDubM4qrb2GBmF2Tc6G9g@mail.gmail.com>
Subject: Re: meta-ti layer and tag 2012.05-yocto1.2
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
X-List-Received-Date: Fri, 18 May 2012 09:00:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 18/05/12 08:48, Enric Balletbò i Serra wrote:
> Hi all,
>
> Just to be sure, should the tag 2012.05-yocto1.2 from meta-ti layer be
> compatible with yocto-1.2 (denzil) branch ? Or also depends on other
> layers. Adding only the meta-ti layer to the yocto 1.2 seems is not
> working, there is an unmet dependency on systemd.bbclass.
>
>    yocto-1.2$ bitbake core-image-minimal
>    ERROR: ParseError at
> /home/eballetbo/Workspace/poky/yocto-1.2/meta-ti/recipes-misc/payload/bonescript.bb:5:
> Could not inherit file classes/systemd.bbclass
>    ERROR: Command execution failed: Exited with 1
>
> Cheers,
>     Enric
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Hi Enric, to quote Denys from a patch to meta-ti earlier:

README: by popular demand add comment on how to avoid systemd breakage

Signed-off-by: Denys Dmytriyenko<denys@ti.com>

---

  README |    6 ++++++
  1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/README b/README
index b376695..0df391f 100644
--- a/README
+++ b/README
@@ -11,6 +11,12 @@ layers: meta
  branch: master


+When not depending on meta-openembedded and not using systemd, you may need to
+mask few miscellaneous recipes requiring systemd, by adding this to local.conf:
+
+BBMASK = "meta-ti/recipes-misc"
+
+
  The base BSP part of meta-ti should work with different OpenEmbedded/Yocto
  distributions and layer stacks, such as:
  distro-less (only with OE-Core), with Yocto/Poky, with Angstrom or Arago.


Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


