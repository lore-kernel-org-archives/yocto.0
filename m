Return-Path: <joshua.lock@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9253E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 14:29:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 14:29:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="105630170"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga002.jf.intel.com with ESMTP; 02 Feb 2012 14:29:38 -0800
Message-ID: <4F2B0E51.8030902@intel.com>
Date: Thu, 02 Feb 2012 14:29:37 -0800
From: Joshua Lock <joshua.lock@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Wang, Shane" <shane.wang@intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9F5F@SHSMSX102.ccr.corp.intel.com>
	<CB4F0427.6A93%belen.barros.pena@intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255@SHSMSX102.ccr.corp.intel.com>
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Thu, 02 Feb 2012 22:29:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Some thoughts inline, I've snipped out text unrelated to my comments.

On 02/02/12 04:48, Wang, Shane wrote:
> In your previous video, recipe view has sort of “summary” which lists
> all recipes selected on the right side. Can we remove the tab “Included”
> and make a “summary” for the package view? And with the tab “Included”,
> we need to scroll down to find a package or locate it in the search box,
> and then do “Remove” for example, it is not better than the “summary”
> because the “summary” can show all or more.
>
> I agree that the Packages screen should look similar to the Recipes
> dialogue and the Packages dialogue. But after seeing the 'summary'
> working it seems to me that it is not the best solution. The goals of
> the summary were:
>
>  1. Allow users to easily see what's selected to be included in their image
>  2. Allow users to easily understand what's brought by what
>
> I am not sure the existing summary does a good job at any of the two.
> Space restrictions make reading what's included quite difficult
> (particularly when the names of packages or recipes wrap), and the
> layout does not facilitate skimming content, which is what you'll do
> with the summary (you won't read it all from top to bottom: you'll skim
> the recipes/packages to find something you are looking for). The
> relationship between what brings what, represented by the highlight, is
> lost once you perform a new selection. The summary also creates a lot of
> clutter in the interface: the screen is so busy, it's hard to know what
> to look at.
>
> [Shane]: I agree with you on “you won't read it all from top to bottom”.
> But I found the summary had another advantage which “Included” in the
> current Packages screen doesn’t have. That is: when I select one more
> package, what is brought by it will be highlighted, so I can see the
> difference between before and after I select.
>
> The existing Packages screen presents less information at any given
> time: it feels cleaner and easier to read. It's true that it requires
> users to select the Included tab in order to see what's to be included
> in their image, but it provides a much more focused interface. The
> 'brought by' column avoids losing the relationship between what brings
> what, and the sorting and searching mechanisms should minimise the need
> for scrolling.
>
> After multiple iterations (it took a very long time to design that
> screen), I believe the Included tab is a better solution than the
> Summary. If you are convinced that the Summary is better, we'll go for
> it, but I felt I had to explain my concerns with it.

One idea is that we could offer filters on the list, so that the user 
can click the "included" filter and only the packages selected for 
inclusion will be shown - this suggestion is inspired by Thunderbirds 
mail view which can be filtered on unread, starred, etc.

> 3) After clicking “My images” to open an image, how does UI determine to
> show “Run Image” or “Write to Storage”, or “Deploy” or “View Image files”?
>
> First of all, you are right: 'Deploy' and 'Write to storage' are exactly
> the same thing. I meant to use 'Write to storage' everywhere: sorry
> about that. My bad :(
>
> - If the building output included a live image, the Image details screen
> shows the 'Write to storage' button
>
> - If the image is a qemu image, the Image details screen shows the 'Run
> image' button. Clicking the button starts up the virtual machine
>
> [Shane]: Makes sense. A technical question for expert in the mail list,
> how can we distinguish whether an image is a QEMU image or an image for
> real hardware, regarding the fact users can change the image name as
> they want?

I don't know of a way to do this, though someone else may suggest one.
A way we could provide such functionality within Hob might be to set a 
filesystem extended attribute on the files of which MACHINE they were 
build for. Then Hob can read this attribute back and if it's not set 
assume it's not a qemu image. Thoughts?

> 5) For “save template” and “load template”, the only chance for users to
> do “save template” is when the build is done, yes?
>
> Well, I don't know. That's the way it seems to work in the latest
> version of Hob, but it doesn't mean it has to stay that way.

Hmm, really? That's more by oversight than by design ;-)

> A technical question comes to me, it is also for experts. Is there a way
> to modify bitbake to write some more information into the target image,
> and for Hob to unpack and fetch the information later?

Once again, I don't know of a current way but could suggest Extended 
Attributes as one option.

Finally, whilst discussing this in the office Darren raised a concern 
about restricting the 'launch in emulator' option to only images built 
for the qemu machine types citing his use of qemu with FRI2 images.

He suggested: "For images with an ext[234] or other FS image suitable 
for qemu, present the "launch in qemu" button. For images that have the 
hddimg extension, present the Burn to Disk option."

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

