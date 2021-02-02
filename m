Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
 by mx.groups.io with SMTP id smtpd.web11.50826.1612264121676335237
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 03:08:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cISWnPJz;
 spf=pass (domain: gmail.com, ip: 209.85.208.46, mailfrom: idadelm@gmail.com)
Received: by mail-ed1-f46.google.com with SMTP id c2so22373644edr.11
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 03:08:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VRZyW6dNC8T4lEnqfJ20IOIj+a4oMBOfROylUPOfkyA=;
        b=cISWnPJz7jpDo0WFJCxFo4I6czBubKjokoq3Js5xhtosqy7CpWKuVv7aHbtLqHnRsV
         GxHHFJZ5yP4lyBJQ6skVND6j8Zvn9LBDCmZR6rFuijjo29wvY6zSndyzj9DKeYgvPRIO
         fp5TiyMGfP2p+v/NluTbMSamtkt+aTxEPaQK00fnA0yCQZwXg7Fma+iLEBrubfAiVckh
         JZGj4ZQPXcSBdJ1JfxXo8GRelgVC6w96QS6OSiX/xvjDwK5YQsAYMO2l0LWNux/nBJQN
         H1Um+WKqfqnnqwuL0U+9ibMt/mG1R1zkSp2vYZTvn+pdlZclBKsHrlKk3dexCouEIU96
         iNoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VRZyW6dNC8T4lEnqfJ20IOIj+a4oMBOfROylUPOfkyA=;
        b=bRxaPxjlM6RMvcH23F9UvcNoGSMcgMLZosJLqumsk1+eXPUsQyYZa8a5MQGDs75U5p
         tpCoYIIjPU8b+MTriJQw7/MOc8/cEXqJMle743d/L+tt3FU7j5vfbVi8/d+NcpOHzshv
         VHCnK8UX+YCoPUFeRWrezSUTzWqITaBJC//PLwJq7UwQQUVTWblhXnX5z61ocBhWhV1l
         gRzla4K5T/eNSfPjHW6R24ozZ9gqE4Ez02FSbTdGLT0qZnsC+zbjzAV8ysolcTQ5E2MG
         R300npzq/j3aaEDn8D8FvL7F6njM554RUiJoH5Xqg4mNljOZ0uVyoRs7J/sBoOOS2PjV
         mbtw==
X-Gm-Message-State: AOAM533bwR/nHqtcyvRwPaF2cu/9KLgKPb9VWM6VVmFkEk7EeywP9a+O
	2oqCG0wqXNrlFfV9NdJLbuLlP9ZlQGfUNvgl5bg=
X-Google-Smtp-Source: ABdhPJxPuLOJTE5ZrSIXvECH4oxE3sv0Rz/nr6k4zWFcPreG2oWLgp9zwdwyzpGkqadTIQvJIjH0l37RR9aP+7xzNS0=
X-Received: by 2002:a50:b765:: with SMTP id g92mr23158629ede.317.1612264119691;
 Tue, 02 Feb 2021 03:08:39 -0800 (PST)
MIME-Version: 1.0
References: <165FE980CA52D726.16314@lists.yoctoproject.org>
In-Reply-To: <165FE980CA52D726.16314@lists.yoctoproject.org>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Tue, 2 Feb 2021 12:08:24 +0100
Message-ID: <CAN7sTgsmS_tp_wwo_tb-eaN6ZZGH5cW7vRRsE8T=A3Femw-pzw@mail.gmail.com>
Subject: Re: [yocto] [layerindex-web][PATCH] Add SPDX license headers to layerindex-web source files
To: Ida Delphine <idadelm@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	Paul Eggleton <bluelightning@bluelightning.org>
Content-Type: multipart/alternative; boundary="00000000000023734e05ba587e01"

--00000000000023734e05ba587e01
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I sent this patch October last year and couldn't be integrated since it was
the end of the development cycle.

On Tue, 2 Feb 2021, 12:07 pm Meh Mbeh Ida Delphine via
lists.yoctoproject.org, <idadelm=3Dgmail.com@lists.yoctoproject.org> wrote:

> From: Meh Mbeh Ida Delphine <idadelm@gmail.com>
>
> Added SPDX identifiers to all .py files except those in migrations
> directory.
> Added final new line in all files without it.
>
> Fixes: [YOCTO #13527]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>  __init__.py                                   |   1 +
>  docker/settings.py                            |   2 +
>  dockersetup.py                                |   2 +
>  layerindex/__init__.py                        |   5 +
>  layerindex/admin.py                           |   2 +
>  layerindex/auth_forms.py                      |   2 +
>  layerindex/auth_views.py                      |   2 +
>  layerindex/bulkchange.py                      |   2 +
>  layerindex/context_processors.py              |   2 +
>  layerindex/forms.py                           |   2 +
>  layerindex/layerconfparse.py                  |   1 +
>  layerindex/middleware.py                      |   2 +
>  layerindex/models.py                          |   2 +
>  layerindex/querysethelper.py                  |   8 +
>  layerindex/recipedesc.py                      |   2 +
>  layerindex/recipeparse.py                     |   2 +
>  layerindex/restperm.py                        |   6 +
>  layerindex/restviews.py                       |   2 +
>  layerindex/securityquestions.py               |   8 +
>  layerindex/static/css/bootstrap-theme.css     |   2 +-
>  layerindex/static/css/bootstrap-theme.css.map |   2 +-
>  layerindex/static/css/bootstrap-theme.min.css |   2 +-
>  .../static/css/bootstrap-theme.min.css.map    |   2 +-
>  layerindex/static/css/bootstrap.css           |   2 +-
>  layerindex/static/css/bootstrap.css.map       |   2 +-
>  layerindex/static/css/bootstrap.min.css       |   2 +-
>  layerindex/static/css/bootstrap.min.css.map   |   2 +-
>  .../fonts/glyphicons-halflings-regular.svg    |   2 +-
>  layerindex/static/js/Chart.js                 | 596 +++++++++---------
>  layerindex/static/js/bootstrap.min.js         |   2 +-
>  layerindex/tasks.py                           |   2 +
>  layerindex/templatetags/__init__.py           |   5 +
>  layerindex/templatetags/extrafilters.py       |   6 +
>  layerindex/tools/fedora-fetch.py              |   2 +
>  layerindex/tools/fixup_duplicates.py          |   2 +
>  layerindex/tools/github-fetch.py              |   2 +
>  layerindex/tools/import_classic.py            |   2 +
>  layerindex/tools/import_classic_wiki.py       |   2 +
>  layerindex/tools/import_layer.py              |   2 +
>  layerindex/tools/import_layers.py             |   2 +
>  layerindex/tools/import_otherdistro.py        |   2 +
>  layerindex/tools/import_project.py            |   2 +
>  layerindex/tools/import_wiki_layers.py        |   2 +
>  layerindex/tools/site_name.py                 |   2 +
>  layerindex/tools/update_classic_status.py     |   2 +
>  layerindex/tools/webapi-test.py               |   2 +
>  layerindex/update.py                          |   2 +
>  layerindex/update_layer.py                    |   2 +
>  layerindex/urls.py                            |   2 +
>  layerindex/urls_branch.py                     |   2 +
>  layerindex/utils.py                           |   2 +
>  layerindex/views.py                           |   2 +
>  manage.py                                     |   2 +
>  password_validation.py                        |   5 +
>  pytest.ini                                    |   5 +
>  rrs/__init__.py                               |   5 +
>  rrs/admin.py                                  |   2 +
>  rrs/apps.py                                   |   6 +
>  rrs/context_processors.py                     |   2 +
>  rrs/models.py                                 |   2 +
>  rrs/tools/common.py                           |   2 +
>  rrs/tools/dump_upgrades.py                    |   2 +
>  rrs/tools/historytool.py                      |   2 +
>  rrs/tools/rrs_distros.py                      |   2 +
>  rrs/tools/rrs_maintainer_history.py           |   2 +
>  rrs/tools/rrs_upgrade_history.py              |   2 +
>  rrs/tools/rrs_upstream_email.py               |   2 +
>  rrs/tools/rrs_upstream_history.py             |   2 +
>  rrs/tools/upgrade_history_internal.py         |   2 +
>  rrs/urls.py                                   |   8 +
>  rrs/views.py                                  |   8 +
>  rrs/wsgi.py                                   |   6 +
>  settings.py                                   |   2 +
>  templates/500.html                            |   2 +-
>  templates/layerindex/submitemail.txt          |   2 +-
>  tests/test_update.py                          |   2 +
>  urls.py                                       |   2 +
>  wsgi.py                                       |   5 +
>  78 files changed, 496 insertions(+), 310 deletions(-)
>
> diff --git a/__init__.py b/__init__.py
> index e69de29..548d2d4 100644
> --- a/__init__.py
> +++ b/__init__.py
> @@ -0,0 +1 @@
> +# SPDX-License-Identifier: MIT
> diff --git a/docker/settings.py b/docker/settings.py
> index fb7d376..7330ab9 100644
> --- a/docker/settings.py
> +++ b/docker/settings.py
> @@ -2,6 +2,8 @@
>  #
>  # Based on settings.py from the Django project template
>  # Copyright (c) Django Software Foundation and individual contributors.
> +#
> +# SPDX-License-Identifier: MIT
>
>  import os
>
> diff --git a/dockersetup.py b/dockersetup.py
> index 3cc8b2d..e45a846 100755
> --- a/dockersetup.py
> +++ b/dockersetup.py
> @@ -6,6 +6,8 @@
>  # Author: Amber Elliot <amber.n.elliot@intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  # This script will make a cluster of 5 containers:
>  #
> diff --git a/layerindex/__init__.py b/layerindex/__init__.py
> index e69de29..11788b1 100644
> --- a/layerindex/__init__.py
> +++ b/layerindex/__init__.py
> @@ -0,0 +1,5 @@
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> diff --git a/layerindex/admin.py b/layerindex/admin.py
> index 9ef781d..9ed6102 100644
> --- a/layerindex/admin.py
> +++ b/layerindex/admin.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from layerindex.models import *
>  from django.contrib import admin
> diff --git a/layerindex/auth_forms.py b/layerindex/auth_forms.py
> index fc3d2d1..7af48f9 100644
> --- a/layerindex/auth_forms.py
> +++ b/layerindex/auth_forms.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from captcha.fields import CaptchaField
>  from django import forms
> diff --git a/layerindex/auth_views.py b/layerindex/auth_views.py
> index 152f171..08e0334 100644
> --- a/layerindex/auth_views.py
> +++ b/layerindex/auth_views.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.contrib import messages
>  from django.contrib.auth import logout
> diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py
> index 3d1ee2b..6382053 100644
> --- a/layerindex/bulkchange.py
> +++ b/layerindex/bulkchange.py
> @@ -5,6 +5,8 @@
>  # Copyright (C) 2013, 2016, 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/context_processors.py
> b/layerindex/context_processors.py
> index 3352e63..2cc0380 100644
> --- a/layerindex/context_processors.py
> +++ b/layerindex/context_processors.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013, 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from layerindex.models import Branch, LayerItem, SiteNotice
>  from django.contrib.sites.models import Site
> diff --git a/layerindex/forms.py b/layerindex/forms.py
> index 4061d4b..9615859 100644
> --- a/layerindex/forms.py
> +++ b/layerindex/forms.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013, 2016-2019 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import re
>  from collections import OrderedDict
> diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py
> index a812140..84ec005 100644
> --- a/layerindex/layerconfparse.py
> +++ b/layerindex/layerconfparse.py
> @@ -5,6 +5,7 @@
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
>  #
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/middleware.py b/layerindex/middleware.py
> index afe34a3..527cc8b 100644
> --- a/layerindex/middleware.py
> +++ b/layerindex/middleware.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2019 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.utils.deprecation import MiddlewareMixin
>  from django.http import HttpResponseRedirect
> diff --git a/layerindex/models.py b/layerindex/models.py
> index 99c68e1..329cc33 100644
> --- a/layerindex/models.py
> +++ b/layerindex/models.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013-2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.db import models
>  from datetime import datetime
> diff --git a/layerindex/querysethelper.py b/layerindex/querysethelper.py
> index 5a856ee..fb26a17 100644
> --- a/layerindex/querysethelper.py
> +++ b/layerindex/querysethelper.py
> @@ -1,3 +1,11 @@
> +# layerindex-web - queryset helper definitions
> +#
> +# Copyright (C) 2013-2018 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  import operator
>  import functools
>  from django.db.models import Q, CharField
> diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py
> index 26280ee..be47f6e 100644
> --- a/layerindex/recipedesc.py
> +++ b/layerindex/recipedesc.py
> @@ -4,6 +4,8 @@
>  #
>  # Copyright (C) 2012 Intel Corporation
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
> index 35867ad..62c08e9 100644
> --- a/layerindex/recipeparse.py
> +++ b/layerindex/recipeparse.py
> @@ -4,6 +4,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/restperm.py b/layerindex/restperm.py
> index fb9f715..5d74c66 100644
> --- a/layerindex/restperm.py
> +++ b/layerindex/restperm.py
> @@ -1,3 +1,9 @@
> +# Copyright (C) 2013-2018 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  from rest_framework import permissions
>
>  class ReadOnlyPermission(permissions.BasePermission):
> diff --git a/layerindex/restviews.py b/layerindex/restviews.py
> index 7de4cd7..91779f5 100644
> --- a/layerindex/restviews.py
> +++ b/layerindex/restviews.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2014, 2016-2019 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from layerindex.models import Branch, LayerItem, LayerMaintainer,
> YPCompatibleVersion, LayerNote, LayerBranch, LayerDependency, Recipe,
> Machine, Distro, BBClass, Source, Patch, PackageConfig, StaticBuildDep,
> DynamicBuildDep, RecipeFileDependency, BBAppend, IncFile
>  from rest_framework import viewsets, serializers, pagination
> diff --git a/layerindex/securityquestions.py
> b/layerindex/securityquestions.py
> index a6a0e1c..1883b11 100644
> --- a/layerindex/securityquestions.py
> +++ b/layerindex/securityquestions.py
> @@ -1,3 +1,11 @@
> +# layerindex-web - Security Questions
> +#
> +# Copyright (C) 2013-2018 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  security_questions =3D ["What was the name of your first pet?",
>                         "What was the last name of your third grade
> teacher?",
>                         "What is your favorite pizza topping?",
> diff --git a/layerindex/static/css/bootstrap-theme.css
> b/layerindex/static/css/bootstrap-theme.css
> index ea33f76..aeab5d1 100644
> --- a/layerindex/static/css/bootstrap-theme.css
> +++ b/layerindex/static/css/bootstrap-theme.css
> @@ -584,4 +584,4 @@ fieldset[disabled] .btn-danger.active {
>    -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 0
> rgba(255, 255, 255, 0.1);
>    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(255, 255=
,
> 255, 0.1);
>  }
> -/*# sourceMappingURL=3Dbootstrap-theme.css.map */
> \ No newline at end of file
> +/*# sourceMappingURL=3Dbootstrap-theme.css.map */
> diff --git a/layerindex/static/css/bootstrap-theme.css.map
> b/layerindex/static/css/bootstrap-theme.css.map
> index 949d097..13747e4 100644
> --- a/layerindex/static/css/bootstrap-theme.css.map
> +++ b/layerindex/static/css/bootstrap-theme.css.map
> @@ -1 +1 @@
> -{"version":3,"sources":["bootstrap-theme.css","less/theme.less","less/mi=
xins/vendor-prefixes.less","less/mixins/gradients.less","less/mixins/reset-=
filter.less"],"names":[],"mappings":"AAAA;;;;GAIG;ACiBH;;;;;;EAME,yCAAA;EC2=
CA,4FAAA;EACQ,oFAAA;CFzDT;ACkBC;;;;;;;;;;;;ECsCA,yDAAA;EACQ,iDAAA;CF1CT;ACQ=
C;;;;;;;;;;;;;;;;;;ECiCA,yBAAA;EACQ,iBAAA;CFrBT;AC7BD;;;;;;EAuBI,kBAAA;CDcH=
;AC2BC;;EAEE,uBAAA;CDzBH;AC8BD;EEvEI,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA=
;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;EAyCA,0BAAA;EACA,mBAAA;CDtBD=
;AClBC;;EAEE,0BAAA;EACA,6BAAA;CDoBH;ACjBC;;EAEE,0BAAA;EACA,sBAAA;CDmBH;ACbG=
;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2BL;ACPD;EE5EI,yEAAA;EACA,oEAAA;E=
ACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4DD;AC=
1DC;;EAEE,0BAAA;EACA,6BAAA;CD4DH;ACzDC;;EAEE,0BAAA;EACA,sBAAA;CD2DH;ACrDG;;=
;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmEL;AC9CD;EE7EI,yEAAA;EACA,oEAAA;EA=
CA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CDoGD;ACl=
GC;;EAEE,0BAAA;EACA,6BAAA;CDoGH;ACjGC;;EAEE,0BAAA;EACA,sBAAA;CDmGH;AC7FG;;;=
;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2GL;ACrFD;EE9EI,yEAAA;EACA,oEAAA;EAC=
A,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4ID;AC1I=
C;;EAEE,0BAAA;EACA,6BAAA;CD4IH;ACzIC;;EAEE,0BAAA;EACA,sBAAA;CD2IH;ACrIG;;;;=
;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmJL;AC5HD;EE/EI,yEAAA;EACA,oEAAA;EACA=
,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CDoLD;AClLC=
;;EAEE,0BAAA;EACA,6BAAA;CDoLH;ACjLC;;EAEE,0BAAA;EACA,sBAAA;CDmLH;AC7KG;;;;;=
;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2LL;ACnKD;EEhFI,yEAAA;EACA,oEAAA;EACA,=
8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4ND;AC1NC;=
;EAEE,0BAAA;EACA,6BAAA;CD4NH;ACzNC;;EAEE,0BAAA;EACA,sBAAA;CD2NH;ACrNG;;;;;;=
;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmOL;ACpMD;;ECtCE,mDAAA;EACQ,2CAAA;CF8OT=
;AC/LD;;EEjGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;=
EFgGF,0BAAA;CDqMD;ACnMD;;;EEtGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA=
,uHAAA;EACA,4BAAA;EFsGF,0BAAA;CDyMD;AChMD;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA=
;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;EHqIA,mBAAA;ECrEA,4FAAA;EACQ,=
oFAAA;CF4QT;AC3MD;;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;=
EACA,4BAAA;ED6CF,yDAAA;EACQ,iDAAA;CFsRT;ACxMD;;EAEE,+CAAA;CD0MD;ACtMD;EEtII=
,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;E=
HwJA,mBAAA;CD4MD;AC/MD;;EEtII,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,u=
HAAA;EACA,4BAAA;ED6CF,wDAAA;EACQ,gDAAA;CF6ST;ACzND;;EAYI,0CAAA;CDiNH;AC5MD;=
;;EAGE,iBAAA;CD8MD;AC1MD;EAEI;;;IAGE,YAAA;IEnKF,yEAAA;IACA,oEAAA;IACA,8FAAA=
;IAAA,uEAAA;IACA,uHAAA;IACA,4BAAA;GH+WD;CACF;ACrMD;EACE,8CAAA;EC/HA,2FAAA;E=
ACQ,mFAAA;CFuUT;AC7LD;EE5LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHA=
AA;EACA,4BAAA;EFoLF,sBAAA;CDyMD;ACpMD;EE7LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAA=
A,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDiND;AC3MD;EE9LI,yEAAA;EACA,oEAA=
A;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDyND;AClND;EE/LI=
,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;C=
DiOD;AClND;EEvMI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BA=
AA;CH4ZH;AC/MD;EEjNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA=
,4BAAA;CHmaH;ACrND;EElNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;=
EACA,4BAAA;CH0aH;AC3ND;EEnNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uH=
AAA;EACA,4BAAA;CHibH;ACjOD;EEpNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EAC=
A,uHAAA;EACA,4BAAA;CHwbH;ACvOD;EErNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA=
;EACA,uHAAA;EACA,4BAAA;CH+bH;AC1OD;EExLI,8MAAA;EACA,yMAAA;EACA,sMAAA;CHqaH;=
ACtOD;EACE,mBAAA;EClLA,mDAAA;EACQ,2CAAA;CF2ZT;ACvOD;;;EAGE,8BAAA;EEzOE,yEAA=
A;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFuOF,sBAAA;CD6OD;=
AClPD;;;EAQI,kBAAA;CD+OH;ACrOD;ECvME,kDAAA;EACQ,0CAAA;CF+aT;AC/ND;EElQI,yEA=
AA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHoeH;ACrOD;EEnQI=
,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CH2eH;AC3OD;E=
EpQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHkfH;ACj=
PD;EErQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHyfH=
;ACvPD;EEtQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;C=
HggBH;AC7PD;EEvQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4B=
AAA;CHugBH;AC7PD;EE9QI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EA=
CA,4BAAA;EF4QF,sBAAA;EC/NA,0FAAA;EACQ,kFAAA;CFmeT","file":"bootstrap-theme.=
css","sourcesContent":["/*!\n
> * Bootstrap v3.4.1 (https://getbootstrap.com/)\n * Copyright 2011-2019
> Twitter, Inc.\n * Licensed under MIT (
> https://github.com/twbs/bootstrap/blob/master/LICENSE)\n
> */\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.btn-warning=
,\n.btn-danger
> {\n  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);\n  -webkit-box-shadow: ins=
et
> 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075);\n
> box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0,
> 0,
> 0.075);\n}\n.btn-default:active,\n.btn-primary:active,\n.btn-success:acti=
ve,\n.btn-info:active,\n.btn-warning:active,\n.btn-danger:active,\n.btn-def=
ault.active,\n.btn-primary.active,\n.btn-success.active,\n.btn-info.active,=
\n.btn-warning.active,\n.btn-danger.active
> {\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n
> box-shadow: inset 0 3px 5px rgba(0, 0, 0,
> 0.125);\n}\n.btn-default.disabled,\n.btn-primary.disabled,\n.btn-success.=
disabled,\n.btn-info.disabled,\n.btn-warning.disabled,\n.btn-danger.disable=
d,\n.btn-default[disabled],\n.btn-primary[disabled],\n.btn-success[disabled=
],\n.btn-info[disabled],\n.btn-warning[disabled],\n.btn-danger[disabled],\n=
fieldset[disabled]
> .btn-default,\nfieldset[disabled] .btn-primary,\nfieldset[disabled]
> .btn-success,\nfieldset[disabled] .btn-info,\nfieldset[disabled]
> .btn-warning,\nfieldset[disabled] .btn-danger {\n  -webkit-box-shadow:
> none;\n  box-shadow: none;\n}\n.btn-default .badge,\n.btn-primary
> .badge,\n.btn-success .badge,\n.btn-info .badge,\n.btn-warning
> .badge,\n.btn-danger .badge {\n  text-shadow:
> none;\n}\n.btn:active,\n.btn.active {\n  background-image:
> none;\n}\n.btn-default {\n  background-image: -webkit-linear-gradient(top=
,
> #fff 0%, #e0e0e0 100%);\n  background-image: -o-linear-gradient(top, #fff
> 0%, #e0e0e0 100%);\n  background-image: linear-gradient(to bottom, #fff 0=
%,
> #e0e0e0 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffffffff',
> endColorstr=3D'#ffe0e0e0', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color: #dbdbdb;\n  text-shadow: 0
> 1px 0 #fff;\n  border-color:
> #ccc;\n}\n.btn-default:hover,\n.btn-default:focus {\n  background-color:
> #e0e0e0;\n  background-position: 0
> -15px;\n}\n.btn-default:active,\n.btn-default.active {\n  background-colo=
r:
> #e0e0e0;\n  border-color:
> #dbdbdb;\n}\n.btn-default.disabled,\n.btn-default[disabled],\nfieldset[di=
sabled]
> .btn-default,\n.btn-default.disabled:hover,\n.btn-default[disabled]:hover=
,\nfieldset[disabled]
> .btn-default:hover,\n.btn-default.disabled:focus,\n.btn-default[disabled]=
:focus,\nfieldset[disabled]
> .btn-default:focus,\n.btn-default.disabled.focus,\n.btn-default[disabled]=
.focus,\nfieldset[disabled]
> .btn-default.focus,\n.btn-default.disabled:active,\n.btn-default[disabled=
]:active,\nfieldset[disabled]
> .btn-default:active,\n.btn-default.disabled.active,\n.btn-default[disable=
d].active,\nfieldset[disabled]
> .btn-default.active {\n  background-color: #e0e0e0;\n  background-image:
> none;\n}\n.btn-primary {\n  background-image: -webkit-linear-gradient(top=
,
> #337ab7 0%, #265a88 100%);\n  background-image: -o-linear-gradient(top,
> #337ab7 0%, #265a88 100%);\n  background-image: linear-gradient(to bottom=
,
> #337ab7 0%, #265a88 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff265a88', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #245580;\n}\n.btn-primary:hover,\n.btn-primary:focus {\n  background-colo=
r:
> #265a88;\n  background-position: 0
> -15px;\n}\n.btn-primary:active,\n.btn-primary.active {\n  background-colo=
r:
> #265a88;\n  border-color:
> #245580;\n}\n.btn-primary.disabled,\n.btn-primary[disabled],\nfieldset[di=
sabled]
> .btn-primary,\n.btn-primary.disabled:hover,\n.btn-primary[disabled]:hover=
,\nfieldset[disabled]
> .btn-primary:hover,\n.btn-primary.disabled:focus,\n.btn-primary[disabled]=
:focus,\nfieldset[disabled]
> .btn-primary:focus,\n.btn-primary.disabled.focus,\n.btn-primary[disabled]=
.focus,\nfieldset[disabled]
> .btn-primary.focus,\n.btn-primary.disabled:active,\n.btn-primary[disabled=
]:active,\nfieldset[disabled]
> .btn-primary:active,\n.btn-primary.disabled.active,\n.btn-primary[disable=
d].active,\nfieldset[disabled]
> .btn-primary.active {\n  background-color: #265a88;\n  background-image:
> none;\n}\n.btn-success {\n  background-image: -webkit-linear-gradient(top=
,
> #5cb85c 0%, #419641 100%);\n  background-image: -o-linear-gradient(top,
> #5cb85c 0%, #419641 100%);\n  background-image: linear-gradient(to bottom=
,
> #5cb85c 0%, #419641 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5cb85c',
> endColorstr=3D'#ff419641', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #3e8f3e;\n}\n.btn-success:hover,\n.btn-success:focus {\n  background-colo=
r:
> #419641;\n  background-position: 0
> -15px;\n}\n.btn-success:active,\n.btn-success.active {\n  background-colo=
r:
> #419641;\n  border-color:
> #3e8f3e;\n}\n.btn-success.disabled,\n.btn-success[disabled],\nfieldset[di=
sabled]
> .btn-success,\n.btn-success.disabled:hover,\n.btn-success[disabled]:hover=
,\nfieldset[disabled]
> .btn-success:hover,\n.btn-success.disabled:focus,\n.btn-success[disabled]=
:focus,\nfieldset[disabled]
> .btn-success:focus,\n.btn-success.disabled.focus,\n.btn-success[disabled]=
.focus,\nfieldset[disabled]
> .btn-success.focus,\n.btn-success.disabled:active,\n.btn-success[disabled=
]:active,\nfieldset[disabled]
> .btn-success:active,\n.btn-success.disabled.active,\n.btn-success[disable=
d].active,\nfieldset[disabled]
> .btn-success.active {\n  background-color: #419641;\n  background-image:
> none;\n}\n.btn-info {\n  background-image: -webkit-linear-gradient(top,
> #5bc0de 0%, #2aabd2 100%);\n  background-image: -o-linear-gradient(top,
> #5bc0de 0%, #2aabd2 100%);\n  background-image: linear-gradient(to bottom=
,
> #5bc0de 0%, #2aabd2 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5bc0de',
> endColorstr=3D'#ff2aabd2', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #28a4c9;\n}\n.btn-info:hover,\n.btn-info:focus {\n  background-color:
> #2aabd2;\n  background-position: 0
> -15px;\n}\n.btn-info:active,\n.btn-info.active {\n  background-color:
> #2aabd2;\n  border-color:
> #28a4c9;\n}\n.btn-info.disabled,\n.btn-info[disabled],\nfieldset[disabled=
]
> .btn-info,\n.btn-info.disabled:hover,\n.btn-info[disabled]:hover,\nfields=
et[disabled]
> .btn-info:hover,\n.btn-info.disabled:focus,\n.btn-info[disabled]:focus,\n=
fieldset[disabled]
> .btn-info:focus,\n.btn-info.disabled.focus,\n.btn-info[disabled].focus,\n=
fieldset[disabled]
> .btn-info.focus,\n.btn-info.disabled:active,\n.btn-info[disabled]:active,=
\nfieldset[disabled]
> .btn-info:active,\n.btn-info.disabled.active,\n.btn-info[disabled].active=
,\nfieldset[disabled]
> .btn-info.active {\n  background-color: #2aabd2;\n  background-image:
> none;\n}\n.btn-warning {\n  background-image: -webkit-linear-gradient(top=
,
> #f0ad4e 0%, #eb9316 100%);\n  background-image: -o-linear-gradient(top,
> #f0ad4e 0%, #eb9316 100%);\n  background-image: linear-gradient(to bottom=
,
> #f0ad4e 0%, #eb9316 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff0ad4e',
> endColorstr=3D'#ffeb9316', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #e38d13;\n}\n.btn-warning:hover,\n.btn-warning:focus {\n  background-colo=
r:
> #eb9316;\n  background-position: 0
> -15px;\n}\n.btn-warning:active,\n.btn-warning.active {\n  background-colo=
r:
> #eb9316;\n  border-color:
> #e38d13;\n}\n.btn-warning.disabled,\n.btn-warning[disabled],\nfieldset[di=
sabled]
> .btn-warning,\n.btn-warning.disabled:hover,\n.btn-warning[disabled]:hover=
,\nfieldset[disabled]
> .btn-warning:hover,\n.btn-warning.disabled:focus,\n.btn-warning[disabled]=
:focus,\nfieldset[disabled]
> .btn-warning:focus,\n.btn-warning.disabled.focus,\n.btn-warning[disabled]=
.focus,\nfieldset[disabled]
> .btn-warning.focus,\n.btn-warning.disabled:active,\n.btn-warning[disabled=
]:active,\nfieldset[disabled]
> .btn-warning:active,\n.btn-warning.disabled.active,\n.btn-warning[disable=
d].active,\nfieldset[disabled]
> .btn-warning.active {\n  background-color: #eb9316;\n  background-image:
> none;\n}\n.btn-danger {\n  background-image: -webkit-linear-gradient(top,
> #d9534f 0%, #c12e2a 100%);\n  background-image: -o-linear-gradient(top,
> #d9534f 0%, #c12e2a 100%);\n  background-image: linear-gradient(to bottom=
,
> #d9534f 0%, #c12e2a 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9534f',
> endColorstr=3D'#ffc12e2a', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #b92c28;\n}\n.btn-danger:hover,\n.btn-danger:focus {\n  background-color:
> #c12e2a;\n  background-position: 0
> -15px;\n}\n.btn-danger:active,\n.btn-danger.active {\n  background-color:
> #c12e2a;\n  border-color:
> #b92c28;\n}\n.btn-danger.disabled,\n.btn-danger[disabled],\nfieldset[disa=
bled]
> .btn-danger,\n.btn-danger.disabled:hover,\n.btn-danger[disabled]:hover,\n=
fieldset[disabled]
> .btn-danger:hover,\n.btn-danger.disabled:focus,\n.btn-danger[disabled]:fo=
cus,\nfieldset[disabled]
> .btn-danger:focus,\n.btn-danger.disabled.focus,\n.btn-danger[disabled].fo=
cus,\nfieldset[disabled]
> .btn-danger.focus,\n.btn-danger.disabled:active,\n.btn-danger[disabled]:a=
ctive,\nfieldset[disabled]
> .btn-danger:active,\n.btn-danger.disabled.active,\n.btn-danger[disabled].=
active,\nfieldset[disabled]
> .btn-danger.active {\n  background-color: #c12e2a;\n  background-image:
> none;\n}\n.thumbnail,\n.img-thumbnail {\n  -webkit-box-shadow: 0 1px 2px
> rgba(0, 0, 0, 0.075);\n  box-shadow: 0 1px 2px rgba(0, 0, 0,
> 0.075);\n}\n.dropdown-menu > li > a:hover,\n.dropdown-menu > li > a:focus
> {\n  background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8
> 100%);\n  background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8
> 100%);\n  background-image: linear-gradient(to bottom, #f5f5f5 0%, #e8e8e=
8
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff5f5f5',
> endColorstr=3D'#ffe8e8e8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  background-color: #e8e8e8;\n}\n.dropdown-menu > .active >
> a,\n.dropdown-menu > .active > a:hover,\n.dropdown-menu > .active > a:foc=
us
> {\n  background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n  background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n  background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da=
4
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  background-color: #2e6da4;\n}\n.navbar-default {\n
> background-image: -webkit-linear-gradient(top, #ffffff 0%, #f8f8f8
> 100%);\n  background-image: -o-linear-gradient(top, #ffffff 0%, #f8f8f8
> 100%);\n  background-image: linear-gradient(to bottom, #ffffff 0%, #f8f8f=
8
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffffffff',
> endColorstr=3D'#fff8f8f8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  filter: progid:DXImageTransform.Microsoft.gradient(enabled =
=3D
> false);\n  border-radius: 4px;\n  -webkit-box-shadow: inset 0 1px 0
> rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n  box-shadow:
> inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0,
> 0.075);\n}\n.navbar-default .navbar-nav > .open > a,\n.navbar-default
> .navbar-nav > .active > a {\n  background-image:
> -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);\n
> background-image: -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);\n
> background-image: linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdbdbdb',
> endColorstr=3D'#ffe2e2e2', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n
> box-shadow: inset 0 3px 9px rgba(0, 0, 0,
> 0.075);\n}\n.navbar-brand,\n.navbar-nav > li > a {\n  text-shadow: 0 1px =
0
> rgba(255, 255, 255, 0.25);\n}\n.navbar-inverse {\n  background-image:
> -webkit-linear-gradient(top, #3c3c3c 0%, #222 100%);\n  background-image:
> -o-linear-gradient(top, #3c3c3c 0%, #222 100%);\n  background-image:
> linear-gradient(to bottom, #3c3c3c 0%, #222 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff3c3c3c',
> endColorstr=3D'#ff222222', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  filter: progid:DXImageTransform.Microsoft.gradient(enabled =
=3D
> false);\n  border-radius: 4px;\n}\n.navbar-inverse .navbar-nav > .open >
> a,\n.navbar-inverse .navbar-nav > .active > a {\n  background-image:
> -webkit-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n
> background-image: -o-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n
> background-image: linear-gradient(to bottom, #080808 0%, #0f0f0f 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff080808',
> endColorstr=3D'#ff0f0f0f', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25);\n
> box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25);\n}\n.navbar-inverse
> .navbar-brand,\n.navbar-inverse .navbar-nav > li > a {\n  text-shadow: 0
> -1px 0 rgba(0, 0, 0,
> 0.25);\n}\n.navbar-static-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom
> {\n  border-radius: 0;\n}\n@media (max-width: 767px) {\n  .navbar
> .navbar-nav .open .dropdown-menu > .active > a,\n  .navbar .navbar-nav
> .open .dropdown-menu > .active > a:hover,\n  .navbar .navbar-nav .open
> .dropdown-menu > .active > a:focus {\n    color: #fff;\n
> background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n    background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n    background-image: linear-gradient(to bottom, #337ab7 0%,
> #2e6da4 100%);\n    filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n    background-repeat:
> repeat-x;\n  }\n}\n.alert {\n  text-shadow: 0 1px 0 rgba(255, 255, 255,
> 0.2);\n  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.25), 0 1=
px
> 2px rgba(0, 0, 0, 0.05);\n  box-shadow: inset 0 1px 0 rgba(255, 255, 255,
> 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.alert-success {\n
> background-image: -webkit-linear-gradient(top, #dff0d8 0%, #c8e5bc
> 100%);\n  background-image: -o-linear-gradient(top, #dff0d8 0%, #c8e5bc
> 100%);\n  background-image: linear-gradient(to bottom, #dff0d8 0%, #c8e5b=
c
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdff0d8',
> endColorstr=3D'#ffc8e5bc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #b2dba1;\n}\n.alert-info {\n  background-image=
:
> -webkit-linear-gradient(top, #d9edf7 0%, #b9def0 100%);\n
> background-image: -o-linear-gradient(top, #d9edf7 0%, #b9def0 100%);\n
> background-image: linear-gradient(to bottom, #d9edf7 0%, #b9def0 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9edf7',
> endColorstr=3D'#ffb9def0', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #9acfea;\n}\n.alert-warning {\n
> background-image: -webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0
> 100%);\n  background-image: -o-linear-gradient(top, #fcf8e3 0%, #f8efc0
> 100%);\n  background-image: linear-gradient(to bottom, #fcf8e3 0%, #f8efc=
0
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fffcf8e3',
> endColorstr=3D'#fff8efc0', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #f5e79e;\n}\n.alert-danger {\n
> background-image: -webkit-linear-gradient(top, #f2dede 0%, #e7c3c3
> 100%);\n  background-image: -o-linear-gradient(top, #f2dede 0%, #e7c3c3
> 100%);\n  background-image: linear-gradient(to bottom, #f2dede 0%, #e7c3c=
3
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff2dede',
> endColorstr=3D'#ffe7c3c3', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #dca7a7;\n}\n.progress {\n  background-image:
> -webkit-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);\n
> background-image: -o-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);\n
> background-image: linear-gradient(to bottom, #ebebeb 0%, #f5f5f5 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffebebeb',
> endColorstr=3D'#fff5f5f5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar {\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #286090 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #286090 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #286090 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff286090', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-success {\n  background-image:
> -webkit-linear-gradient(top, #5cb85c 0%, #449d44 100%);\n
> background-image: -o-linear-gradient(top, #5cb85c 0%, #449d44 100%);\n
> background-image: linear-gradient(to bottom, #5cb85c 0%, #449d44 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5cb85c',
> endColorstr=3D'#ff449d44', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-info {\n  background-image:
> -webkit-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);\n
> background-image: -o-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);\n
> background-image: linear-gradient(to bottom, #5bc0de 0%, #31b0d5 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5bc0de',
> endColorstr=3D'#ff31b0d5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-warning {\n  background-image:
> -webkit-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);\n
> background-image: -o-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);\n
> background-image: linear-gradient(to bottom, #f0ad4e 0%, #ec971f 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff0ad4e',
> endColorstr=3D'#ffec971f', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-danger {\n  background-image:
> -webkit-linear-gradient(top, #d9534f 0%, #c9302c 100%);\n
> background-image: -o-linear-gradient(top, #d9534f 0%, #c9302c 100%);\n
> background-image: linear-gradient(to bottom, #d9534f 0%, #c9302c 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9534f',
> endColorstr=3D'#ffc9302c', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-striped {\n  background-image:
> -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent
> 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255,
> 0.15) 75%, transparent 75%, transparent);\n  background-image:
> -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%,
> transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15)
> 75%, transparent 75%, transparent);\n  background-image:
> linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%,
> transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15)
> 75%, transparent 75%, transparent);\n}\n.list-group {\n  border-radius:
> 4px;\n  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);\n  box-shadow=
:
> 0 1px 2px rgba(0, 0, 0,
> 0.075);\n}\n.list-group-item.active,\n.list-group-item.active:hover,\n.li=
st-group-item.active:focus
> {\n  text-shadow: 0 -1px 0 #286090;\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #2b669a 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2b669a', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #2b669a;\n}\n.list-group-item.active
> .badge,\n.list-group-item.active:hover
> .badge,\n.list-group-item.active:focus .badge {\n  text-shadow:
> none;\n}\n.panel {\n  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\=
n
> box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.panel-default >
> .panel-heading {\n  background-image: -webkit-linear-gradient(top, #f5f5f=
5
> 0%, #e8e8e8 100%);\n  background-image: -o-linear-gradient(top, #f5f5f5 0=
%,
> #e8e8e8 100%);\n  background-image: linear-gradient(to bottom, #f5f5f5 0%=
,
> #e8e8e8 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff5f5f5',
> endColorstr=3D'#ffe8e8e8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-primary > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-success > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n
> background-image: -o-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n
> background-image: linear-gradient(to bottom, #dff0d8 0%, #d0e9c6 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdff0d8',
> endColorstr=3D'#ffd0e9c6', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-info > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n
> background-image: -o-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n
> background-image: linear-gradient(to bottom, #d9edf7 0%, #c4e3f3 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9edf7',
> endColorstr=3D'#ffc4e3f3', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-warning > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n
> background-image: -o-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n
> background-image: linear-gradient(to bottom, #fcf8e3 0%, #faf2cc 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fffcf8e3',
> endColorstr=3D'#fffaf2cc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-danger > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #f2dede 0%, #ebcccc 100%);\n
> background-image: -o-linear-gradient(top, #f2dede 0%, #ebcccc 100%);\n
> background-image: linear-gradient(to bottom, #f2dede 0%, #ebcccc 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff2dede',
> endColorstr=3D'#ffebcccc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.well {\n  background-image: -webkit-linear-gradient(top,
> #e8e8e8 0%, #f5f5f5 100%);\n  background-image: -o-linear-gradient(top,
> #e8e8e8 0%, #f5f5f5 100%);\n  background-image: linear-gradient(to bottom=
,
> #e8e8e8 0%, #f5f5f5 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffe8e8e8',
> endColorstr=3D'#fff5f5f5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #dcdcdc;\n  -webkit-box-shadow: inset 0 1px 3p=
x
> rgba(0, 0, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n  box-shadow: ins=
et
> 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n}\n/*#
> sourceMappingURL=3Dbootstrap-theme.css.map */","// stylelint-disable
> selector-no-qualifying-type, selector-max-compound-selectors\n\n/*!\n *
> Bootstrap v3.4.1 (https://getbootstrap.com/)\n * Copyright 2011-2019
> Twitter, Inc.\n * Licensed under MIT (
> https://github.com/twbs/bootstrap/blob/master/LICENSE)\n */\n\n//\n//
> Load core variables and mixins\n//
> --------------------------------------------------\n\n@import
> \"variables.less\";\n@import \"mixins.less\";\n\n\n//\n// Buttons\n//
> --------------------------------------------------\n\n// Common
> styles\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.btn-war=
ning,\n.btn-danger
> {\n  text-shadow: 0 -1px 0 rgba(0, 0, 0, .2);\n  @shadow: inset 0 1px 0
> rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);\n
> .box-shadow(@shadow);\n\n  // Reset the shadow\n  &:active,\n  &.active
> {\n    .box-shadow(inset 0 3px 5px rgba(0, 0, 0, .125));\n  }\n\n
> &.disabled,\n  &[disabled],\n  fieldset[disabled] & {\n
> .box-shadow(none);\n  }\n\n  .badge {\n    text-shadow: none;\n  }\n}\n\n=
//
> Mixin for generating new styles\n.btn-styles(@btn-color: #555) {\n
> #gradient > .vertical(@start-color: @btn-color; @end-color:
> darken(@btn-color, 12%));\n  .reset-filter(); // Disable gradients for IE=
9
> because filter bleeds through rounded corners; see
> https://github.com/twbs/bootstrap/issues/10620\n  background-repeat:
> repeat-x;\n  border-color: darken(@btn-color, 14%);\n\n  &:hover,\n
> &:focus  {\n    background-color: darken(@btn-color, 12%);\n
> background-position: 0 -15px;\n  }\n\n  &:active,\n  &.active {\n
> background-color: darken(@btn-color, 12%);\n    border-color:
> darken(@btn-color, 14%);\n  }\n\n  &.disabled,\n  &[disabled],\n
> fieldset[disabled] & {\n    &,\n    &:hover,\n    &:focus,\n    &.focus,\=
n
>   &:active,\n    &.active {\n      background-color: darken(@btn-color,
> 12%);\n      background-image: none;\n    }\n  }\n}\n\n// Common
> styles\n.btn {\n  // Remove the gradient for the pressed/active state\n
> &:active,\n  &.active {\n    background-image: none;\n  }\n}\n\n// Apply
> the mixin to the buttons\n.btn-default {\n
> .btn-styles(@btn-default-bg);\n  text-shadow: 0 1px 0 #fff;\n
> border-color: #ccc;\n}\n.btn-primary { .btn-styles(@btn-primary-bg);
> }\n.btn-success { .btn-styles(@btn-success-bg); }\n.btn-info    {
> .btn-styles(@btn-info-bg); }\n.btn-warning { .btn-styles(@btn-warning-bg)=
;
> }\n.btn-danger  { .btn-styles(@btn-danger-bg); }\n\n\n//\n// Images\n//
> --------------------------------------------------\n\n.thumbnail,\n.img-t=
humbnail
> {\n  .box-shadow(0 1px 2px rgba(0, 0, 0, .075));\n}\n\n\n//\n//
> Dropdowns\n//
> --------------------------------------------------\n\n.dropdown-menu > li=
 >
> a:hover,\n.dropdown-menu > li > a:focus {\n  #gradient >
> .vertical(@start-color: @dropdown-link-hover-bg; @end-color:
> darken(@dropdown-link-hover-bg, 5%));\n  background-color:
> darken(@dropdown-link-hover-bg, 5%);\n}\n.dropdown-menu > .active >
> a,\n.dropdown-menu > .active > a:hover,\n.dropdown-menu > .active > a:foc=
us
> {\n  #gradient > .vertical(@start-color: @dropdown-link-active-bg;
> @end-color: darken(@dropdown-link-active-bg, 5%));\n  background-color:
> darken(@dropdown-link-active-bg, 5%);\n}\n\n\n//\n// Navbar\n//
> --------------------------------------------------\n\n// Default
> navbar\n.navbar-default {\n  #gradient > .vertical(@start-color:
> lighten(@navbar-default-bg, 10%); @end-color: @navbar-default-bg);\n
> .reset-filter(); // Remove gradient in IE<10 to fix bug where dropdowns
> don't get triggered\n  border-radius: @navbar-border-radius;\n  @shadow:
> inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 5px rgba(0, 0, 0, .075);\n
> .box-shadow(@shadow);\n\n  .navbar-nav > .open > a,\n  .navbar-nav >
> .active > a {\n    #gradient > .vertical(@start-color:
> darken(@navbar-default-link-active-bg, 5%); @end-color:
> darken(@navbar-default-link-active-bg, 2%));\n    .box-shadow(inset 0 3px
> 9px rgba(0, 0, 0, .075));\n  }\n}\n.navbar-brand,\n.navbar-nav > li > a
> {\n  text-shadow: 0 1px 0 rgba(255, 255, 255, .25);\n}\n\n// Inverted
> navbar\n.navbar-inverse {\n  #gradient > .vertical(@start-color:
> lighten(@navbar-inverse-bg, 10%); @end-color: @navbar-inverse-bg);\n
> .reset-filter(); // Remove gradient in IE<10 to fix bug where dropdowns
> don't get triggered; see https://github.com/twbs/bootstrap/issues/10257\n
> border-radius: @navbar-border-radius;\n  .navbar-nav > .open > a,\n
> .navbar-nav > .active > a {\n    #gradient > .vertical(@start-color:
> @navbar-inverse-link-active-bg; @end-color:
> lighten(@navbar-inverse-link-active-bg, 2.5%));\n    .box-shadow(inset 0
> 3px 9px rgba(0, 0, 0, .25));\n  }\n\n  .navbar-brand,\n  .navbar-nav > li=
 >
> a {\n    text-shadow: 0 -1px 0 rgba(0, 0, 0, .25);\n  }\n}\n\n// Undo
> rounded corners in static and fixed
> navbars\n.navbar-static-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom {\=
n
> border-radius: 0;\n}\n\n// Fix active state of dropdown items in collapse=
d
> mode\n@media (max-width: @grid-float-breakpoint-max) {\n  .navbar
> .navbar-nav .open .dropdown-menu > .active > a {\n    &,\n    &:hover,\n
> &:focus {\n      color: #fff;\n      #gradient > .vertical(@start-color:
> @dropdown-link-active-bg; @end-color: darken(@dropdown-link-active-bg,
> 5%));\n    }\n  }\n}\n\n\n//\n// Alerts\n//
> --------------------------------------------------\n\n// Common
> styles\n.alert {\n  text-shadow: 0 1px 0 rgba(255, 255, 255, .2);\n
> @shadow: inset 0 1px 0 rgba(255, 255, 255, .25), 0 1px 2px rgba(0, 0, 0,
> .05);\n  .box-shadow(@shadow);\n}\n\n// Mixin for generating new
> styles\n.alert-styles(@color) {\n  #gradient > .vertical(@start-color:
> @color; @end-color: darken(@color, 7.5%));\n  border-color: darken(@color=
,
> 15%);\n}\n\n// Apply the mixin to the alerts\n.alert-success    {
> .alert-styles(@alert-success-bg); }\n.alert-info       {
> .alert-styles(@alert-info-bg); }\n.alert-warning    {
> .alert-styles(@alert-warning-bg); }\n.alert-danger     {
> .alert-styles(@alert-danger-bg); }\n\n\n//\n// Progress bars\n//
> --------------------------------------------------\n\n// Give the progres=
s
> background some depth\n.progress {\n  #gradient > .vertical(@start-color:
> darken(@progress-bg, 4%); @end-color: @progress-bg)\n}\n\n// Mixin for
> generating new styles\n.progress-bar-styles(@color) {\n  #gradient >
> .vertical(@start-color: @color; @end-color: darken(@color, 10%));\n}\n\n/=
/
> Apply the mixin to the progress bars\n.progress-bar            {
> .progress-bar-styles(@progress-bar-bg); }\n.progress-bar-success    {
> .progress-bar-styles(@progress-bar-success-bg); }\n.progress-bar-info
>  { .progress-bar-styles(@progress-bar-info-bg); }\n.progress-bar-warning
> { .progress-bar-styles(@progress-bar-warning-bg); }\n.progress-bar-danger
>    { .progress-bar-styles(@progress-bar-danger-bg); }\n\n// Reset the
> striped class because our mixins don't do multiple gradients and\n// the
> above custom styles override the new `.progress-bar-striped` in
> v3.2.0.\n.progress-bar-striped {\n  #gradient > .striped();\n}\n\n\n//\n/=
/
> List groups\n//
> --------------------------------------------------\n\n.list-group {\n
> border-radius: @border-radius-base;\n  .box-shadow(0 1px 2px rgba(0, 0, 0=
,
> .075));\n}\n.list-group-item.active,\n.list-group-item.active:hover,\n.li=
st-group-item.active:focus
> {\n  text-shadow: 0 -1px 0 darken(@list-group-active-bg, 10%);\n  #gradie=
nt
> > .vertical(@start-color: @list-group-active-bg; @end-color:
> darken(@list-group-active-bg, 7.5%));\n  border-color:
> darken(@list-group-active-border, 7.5%);\n\n  .badge {\n    text-shadow:
> none;\n  }\n}\n\n\n//\n// Panels\n//
> --------------------------------------------------\n\n// Common
> styles\n.panel {\n  .box-shadow(0 1px 2px rgba(0, 0, 0, .05));\n}\n\n//
> Mixin for generating new styles\n.panel-heading-styles(@color) {\n
> #gradient > .vertical(@start-color: @color; @end-color: darken(@color,
> 5%));\n}\n\n// Apply the mixin to the panel headings only\n.panel-default=
 >
> .panel-heading   { .panel-heading-styles(@panel-default-heading-bg);
> }\n.panel-primary > .panel-heading   {
> .panel-heading-styles(@panel-primary-heading-bg); }\n.panel-success >
> .panel-heading   { .panel-heading-styles(@panel-success-heading-bg);
> }\n.panel-info > .panel-heading      {
> .panel-heading-styles(@panel-info-heading-bg); }\n.panel-warning >
> .panel-heading   { .panel-heading-styles(@panel-warning-heading-bg);
> }\n.panel-danger > .panel-heading    {
> .panel-heading-styles(@panel-danger-heading-bg); }\n\n\n//\n// Wells\n//
> --------------------------------------------------\n\n.well {\n  #gradien=
t
> > .vertical(@start-color: darken(@well-bg, 5%); @end-color: @well-bg);\n
> border-color: darken(@well-bg, 10%);\n  @shadow: inset 0 1px 3px rgba(0, =
0,
> 0, .05), 0 1px 0 rgba(255, 255, 255, .1);\n
> .box-shadow(@shadow);\n}\n","// stylelint-disable indentation,
> property-no-vendor-prefix, selector-no-vendor-prefix\n\n// Vendor
> Prefixes\n//\n// All vendor mixins are deprecated as of v3.2.0 due to the
> introduction of\n// Autoprefixer in our Gruntfile. They have been removed
> in v4.\n\n// - Animations\n// - Backface visibility\n// - Box shadow\n// =
-
> Box sizing\n// - Content columns\n// - Hyphens\n// - Placeholder text\n//=
 -
> Transformations\n// - Transitions\n// - User Select\n\n\n//
> Animations\n.animation(@animation) {\n  -webkit-animation: @animation;\n
>    -o-animation: @animation;\n          animation:
> @animation;\n}\n.animation-name(@name) {\n  -webkit-animation-name:
> @name;\n          animation-name: @name;\n}\n.animation-duration(@duratio=
n)
> {\n  -webkit-animation-duration: @duration;\n          animation-duration=
:
> @duration;\n}\n.animation-timing-function(@timing-function) {\n
> -webkit-animation-timing-function: @timing-function;\n
> animation-timing-function: @timing-function;\n}\n.animation-delay(@delay)
> {\n  -webkit-animation-delay: @delay;\n          animation-delay:
> @delay;\n}\n.animation-iteration-count(@iteration-count) {\n
> -webkit-animation-iteration-count: @iteration-count;\n
> animation-iteration-count:
> @iteration-count;\n}\n.animation-direction(@direction) {\n
> -webkit-animation-direction: @direction;\n          animation-direction:
> @direction;\n}\n.animation-fill-mode(@fill-mode) {\n
> -webkit-animation-fill-mode: @fill-mode;\n          animation-fill-mode:
> @fill-mode;\n}\n\n// Backface visibility\n// Prevent browsers from
> flickering when using CSS 3D transforms.\n// Default value is `visible`,
> but can be changed to `hidden`\n\n.backface-visibility(@visibility) {\n
> -webkit-backface-visibility: @visibility;\n     -moz-backface-visibility:
> @visibility;\n          backface-visibility: @visibility;\n}\n\n// Drop
> shadows\n//\n// Note: Deprecated `.box-shadow()` as of v3.1.0 since all o=
f
> Bootstrap's\n// supported browsers that have box shadow capabilities now
> support it.\n\n.box-shadow(@shadow) {\n  -webkit-box-shadow: @shadow; //
> iOS <4.3 & Android <4.1\n          box-shadow: @shadow;\n}\n\n// Box
> sizing\n.box-sizing(@boxmodel) {\n  -webkit-box-sizing: @boxmodel;\n
>  -moz-box-sizing: @boxmodel;\n          box-sizing: @boxmodel;\n}\n\n//
> CSS3 Content Columns\n.content-columns(@column-count; @column-gap:
> @grid-gutter-width) {\n  -webkit-column-count: @column-count;\n
>  -moz-column-count: @column-count;\n          column-count:
> @column-count;\n  -webkit-column-gap: @column-gap;\n     -moz-column-gap:
> @column-gap;\n          column-gap: @column-gap;\n}\n\n// Optional
> hyphenation\n.hyphens(@mode: auto) {\n  -webkit-hyphens: @mode;\n
>  -moz-hyphens: @mode;\n      -ms-hyphens: @mode; // IE10+\n
>  -o-hyphens: @mode;\n          hyphens: @mode;\n  word-wrap:
> break-word;\n}\n\n// Placeholder text\n.placeholder(@color:
> @input-color-placeholder) {\n  // Firefox\n  &::-moz-placeholder {\n
> color: @color;\n    opacity: 1; // Override Firefox's unusual default
> opacity; see https://github.com/twbs/bootstrap/pull/11526\n  }\n
> &:-ms-input-placeholder { color: @color; } // Internet Explorer 10+\n
> &::-webkit-input-placeholder  { color: @color; } // Safari and
> Chrome\n}\n\n// Transformations\n.scale(@ratio) {\n  -webkit-transform:
> scale(@ratio);\n      -ms-transform: scale(@ratio); // IE9 only\n
>  -o-transform: scale(@ratio);\n          transform:
> scale(@ratio);\n}\n.scale(@ratioX; @ratioY) {\n  -webkit-transform:
> scale(@ratioX, @ratioY);\n      -ms-transform: scale(@ratioX, @ratioY); /=
/
> IE9 only\n       -o-transform: scale(@ratioX, @ratioY);\n
> transform: scale(@ratioX, @ratioY);\n}\n.scaleX(@ratio) {\n
> -webkit-transform: scaleX(@ratio);\n      -ms-transform: scaleX(@ratio); =
//
> IE9 only\n       -o-transform: scaleX(@ratio);\n          transform:
> scaleX(@ratio);\n}\n.scaleY(@ratio) {\n  -webkit-transform:
> scaleY(@ratio);\n      -ms-transform: scaleY(@ratio); // IE9 only\n
>  -o-transform: scaleY(@ratio);\n          transform:
> scaleY(@ratio);\n}\n.skew(@x; @y) {\n  -webkit-transform: skewX(@x)
> skewY(@y);\n      -ms-transform: skewX(@x) skewY(@y); // See
> https://github.com/twbs/bootstrap/issues/4885; IE9+\n       -o-transform:
> skewX(@x) skewY(@y);\n          transform: skewX(@x)
> skewY(@y);\n}\n.translate(@x; @y) {\n  -webkit-transform: translate(@x,
> @y);\n      -ms-transform: translate(@x, @y); // IE9 only\n
>  -o-transform: translate(@x, @y);\n          transform: translate(@x,
> @y);\n}\n.translate3d(@x; @y; @z) {\n  -webkit-transform: translate3d(@x,
> @y, @z);\n          transform: translate3d(@x, @y,
> @z);\n}\n.rotate(@degrees) {\n  -webkit-transform: rotate(@degrees);\n
> -ms-transform: rotate(@degrees); // IE9 only\n       -o-transform:
> rotate(@degrees);\n          transform:
> rotate(@degrees);\n}\n.rotateX(@degrees) {\n  -webkit-transform:
> rotateX(@degrees);\n      -ms-transform: rotateX(@degrees); // IE9 only\n
>      -o-transform: rotateX(@degrees);\n          transform:
> rotateX(@degrees);\n}\n.rotateY(@degrees) {\n  -webkit-transform:
> rotateY(@degrees);\n      -ms-transform: rotateY(@degrees); // IE9 only\n
>      -o-transform: rotateY(@degrees);\n          transform:
> rotateY(@degrees);\n}\n.perspective(@perspective) {\n  -webkit-perspectiv=
e:
> @perspective;\n     -moz-perspective: @perspective;\n          perspectiv=
e:
> @perspective;\n}\n.perspective-origin(@perspective) {\n
> -webkit-perspective-origin: @perspective;\n     -moz-perspective-origin:
> @perspective;\n          perspective-origin:
> @perspective;\n}\n.transform-origin(@origin) {\n  -webkit-transform-origi=
n:
> @origin;\n     -moz-transform-origin: @origin;\n      -ms-transform-origi=
n:
> @origin; // IE9 only\n          transform-origin: @origin;\n}\n\n\n//
> Transitions\n\n.transition(@transition) {\n  -webkit-transition:
> @transition;\n       -o-transition: @transition;\n          transition:
> @transition;\n}\n.transition-property(@transition-property) {\n
> -webkit-transition-property: @transition-property;\n
> transition-property:
> @transition-property;\n}\n.transition-delay(@transition-delay) {\n
> -webkit-transition-delay: @transition-delay;\n          transition-delay:
> @transition-delay;\n}\n.transition-duration(@transition-duration) {\n
> -webkit-transition-duration: @transition-duration;\n
> transition-duration:
> @transition-duration;\n}\n.transition-timing-function(@timing-function)
> {\n  -webkit-transition-timing-function: @timing-function;\n
> transition-timing-function:
> @timing-function;\n}\n.transition-transform(@transition) {\n
> -webkit-transition: -webkit-transform @transition;\n     -moz-transition:
> -moz-transform @transition;\n       -o-transition: -o-transform
> @transition;\n          transition: transform @transition;\n}\n\n\n// Use=
r
> select\n// For selecting text on the page\n\n.user-select(@select) {\n
> -webkit-user-select: @select;\n     -moz-user-select: @select;\n
> -ms-user-select: @select; // IE10+\n          user-select:
> @select;\n}\n","// stylelint-disable value-no-vendor-prefix,
> selector-max-id\n\n#gradient {\n\n  // Horizontal gradient, from left to
> right\n  //\n  // Creates two color stops, start and end, by specifying a
> color and position for each color stop.\n  // Color stops are not availab=
le
> in IE9 and below.\n  .horizontal(@start-color: #555; @end-color: #333;
> @start-percent: 0%; @end-percent: 100%) {\n    background-image:
> -webkit-linear-gradient(left, @start-color @start-percent, @end-color
> @end-percent); // Safari 5.1-6, Chrome 10+\n    background-image:
> -o-linear-gradient(left, @start-color @start-percent, @end-color
> @end-percent); // Opera 12\n    background-image: linear-gradient(to righ=
t,
> @start-color @start-percent, @end-color @end-percent); // Standard, IE10,
> Firefox 16+, Opera 12.10+, Safari 7+, Chrome 26+\n    filter:
> e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'%d',
> endColorstr=3D'%d', GradientType=3D1)\", argb(@start-color),
> argb(@end-color))); // IE9 and down\n    background-repeat: repeat-x;\n
> }\n\n  // Vertical gradient, from top to bottom\n  //\n  // Creates two
> color stops, start and end, by specifying a color and position for each
> color stop.\n  // Color stops are not available in IE9 and below.\n
> .vertical(@start-color: #555; @end-color: #333; @start-percent: 0%;
> @end-percent: 100%) {\n    background-image: -webkit-linear-gradient(top,
> @start-color @start-percent, @end-color @end-percent);  // Safari 5.1-6,
> Chrome 10+\n    background-image: -o-linear-gradient(top, @start-color
> @start-percent, @end-color @end-percent);  // Opera 12\n
> background-image: linear-gradient(to bottom, @start-color @start-percent,
> @end-color @end-percent); // Standard, IE10, Firefox 16+, Opera 12.10+,
> Safari 7+, Chrome 26+\n    filter:
> e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'%d',
> endColorstr=3D'%d', GradientType=3D0)\", argb(@start-color),
> argb(@end-color))); // IE9 and down\n    background-repeat: repeat-x;\n
> }\n\n  .directional(@start-color: #555; @end-color: #333; @deg: 45deg) {\=
n
>   background-image: -webkit-linear-gradient(@deg, @start-color,
> @end-color); // Safari 5.1-6, Chrome 10+\n    background-image:
> -o-linear-gradient(@deg, @start-color, @end-color); // Opera 12\n
> background-image: linear-gradient(@deg, @start-color, @end-color); //
> Standard, IE10, Firefox 16+, Opera 12.10+, Safari 7+, Chrome 26+\n
> background-repeat: repeat-x;\n  }\n  .horizontal-three-colors(@start-colo=
r:
> #00b3ee; @mid-color: #7a43b6; @color-stop: 50%; @end-color: #c3325f) {\n
> background-image: -webkit-linear-gradient(left, @start-color, @mid-color
> @color-stop, @end-color);\n    background-image: -o-linear-gradient(left,
> @start-color, @mid-color @color-stop, @end-color);\n    background-image:
> linear-gradient(to right, @start-color, @mid-color @color-stop,
> @end-color);\n    filter:
> e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'%d',
> endColorstr=3D'%d', GradientType=3D1)\", argb(@start-color),
> argb(@end-color))); // IE9 and down, gets no color-stop at all for proper
> fallback\n    background-repeat: no-repeat;\n  }\n
> .vertical-three-colors(@start-color: #00b3ee; @mid-color: #7a43b6;
> @color-stop: 50%; @end-color: #c3325f) {\n    background-image:
> -webkit-linear-gradient(@start-color, @mid-color @color-stop,
> @end-color);\n    background-image: -o-linear-gradient(@start-color,
> @mid-color @color-stop, @end-color);\n    background-image:
> linear-gradient(@start-color, @mid-color @color-stop, @end-color);\n
> filter:
> e(%(\"progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'%d',
> endColorstr=3D'%d', GradientType=3D0)\", argb(@start-color),
> argb(@end-color))); // IE9 and down, gets no color-stop at all for proper
> fallback\n    background-repeat: no-repeat;\n  }\n  .radial(@inner-color:
> #555; @outer-color: #333) {\n    background-image:
> -webkit-radial-gradient(circle, @inner-color, @outer-color);\n
> background-image: radial-gradient(circle, @inner-color, @outer-color);\n
> background-repeat: no-repeat;\n  }\n  .striped(@color: rgba(255, 255, 255=
,
> .15); @angle: 45deg) {\n    background-image:
> -webkit-linear-gradient(@angle, @color 25%, transparent 25%, transparent
> 50%, @color 50%, @color 75%, transparent 75%, transparent);\n
> background-image: -o-linear-gradient(@angle, @color 25%, transparent 25%,
> transparent 50%, @color 50%, @color 75%, transparent 75%, transparent);\n
>   background-image: linear-gradient(@angle, @color 25%, transparent 25%,
> transparent 50%, @color 50%, @color 75%, transparent 75%, transparent);\n
> }\n}\n","// Reset filters for IE\n//\n// When you need to remove a gradie=
nt
> background, do not forget to use this to reset\n// the IE filter for IE9
> and below.\n\n.reset-filter() {\n  filter:
> e(%(\"progid:DXImageTransform.Microsoft.gradient(enabled =3D
> false)\"));\n}\n"]}
> \ No newline at end of file
> +{"version":3,"sources":["bootstrap-theme.css","less/theme.less","less/mi=
xins/vendor-prefixes.less","less/mixins/gradients.less","less/mixins/reset-=
filter.less"],"names":[],"mappings":"AAAA;;;;GAIG;ACiBH;;;;;;EAME,yCAAA;EC2=
CA,4FAAA;EACQ,oFAAA;CFzDT;ACkBC;;;;;;;;;;;;ECsCA,yDAAA;EACQ,iDAAA;CF1CT;ACQ=
C;;;;;;;;;;;;;;;;;;ECiCA,yBAAA;EACQ,iBAAA;CFrBT;AC7BD;;;;;;EAuBI,kBAAA;CDcH=
;AC2BC;;EAEE,uBAAA;CDzBH;AC8BD;EEvEI,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA=
;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;EAyCA,0BAAA;EACA,mBAAA;CDtBD=
;AClBC;;EAEE,0BAAA;EACA,6BAAA;CDoBH;ACjBC;;EAEE,0BAAA;EACA,sBAAA;CDmBH;ACbG=
;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2BL;ACPD;EE5EI,yEAAA;EACA,oEAAA;E=
ACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4DD;AC=
1DC;;EAEE,0BAAA;EACA,6BAAA;CD4DH;ACzDC;;EAEE,0BAAA;EACA,sBAAA;CD2DH;ACrDG;;=
;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmEL;AC9CD;EE7EI,yEAAA;EACA,oEAAA;EA=
CA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CDoGD;ACl=
GC;;EAEE,0BAAA;EACA,6BAAA;CDoGH;ACjGC;;EAEE,0BAAA;EACA,sBAAA;CDmGH;AC7FG;;;=
;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2GL;ACrFD;EE9EI,yEAAA;EACA,oEAAA;EAC=
A,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4ID;AC1I=
C;;EAEE,0BAAA;EACA,6BAAA;CD4IH;ACzIC;;EAEE,0BAAA;EACA,sBAAA;CD2IH;ACrIG;;;;=
;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmJL;AC5HD;EE/EI,yEAAA;EACA,oEAAA;EACA=
,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CDoLD;AClLC=
;;EAEE,0BAAA;EACA,6BAAA;CDoLH;ACjLC;;EAEE,0BAAA;EACA,sBAAA;CDmLH;AC7KG;;;;;=
;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2LL;ACnKD;EEhFI,yEAAA;EACA,oEAAA;EACA,=
8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;CD4ND;AC1NC;=
;EAEE,0BAAA;EACA,6BAAA;CD4NH;ACzNC;;EAEE,0BAAA;EACA,sBAAA;CD2NH;ACrNG;;;;;;=
;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmOL;ACpMD;;ECtCE,mDAAA;EACQ,2CAAA;CF8OT=
;AC/LD;;EEjGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;=
EFgGF,0BAAA;CDqMD;ACnMD;;;EEtGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA=
,uHAAA;EACA,4BAAA;EFsGF,0BAAA;CDyMD;AChMD;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA=
;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;EHqIA,mBAAA;ECrEA,4FAAA;EACQ,=
oFAAA;CF4QT;AC3MD;;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;=
EACA,4BAAA;ED6CF,yDAAA;EACQ,iDAAA;CFsRT;ACxMD;;EAEE,+CAAA;CD0MD;ACtMD;EEtII=
,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;E=
HwJA,mBAAA;CD4MD;AC/MD;;EEtII,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,u=
HAAA;EACA,4BAAA;ED6CF,wDAAA;EACQ,gDAAA;CF6ST;ACzND;;EAYI,0CAAA;CDiNH;AC5MD;=
;;EAGE,iBAAA;CD8MD;AC1MD;EAEI;;;IAGE,YAAA;IEnKF,yEAAA;IACA,oEAAA;IACA,8FAAA=
;IAAA,uEAAA;IACA,uHAAA;IACA,4BAAA;GH+WD;CACF;ACrMD;EACE,8CAAA;EC/HA,2FAAA;E=
ACQ,mFAAA;CFuUT;AC7LD;EE5LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHA=
AA;EACA,4BAAA;EFoLF,sBAAA;CDyMD;ACpMD;EE7LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAA=
A,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDiND;AC3MD;EE9LI,yEAAA;EACA,oEAA=
A;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDyND;AClND;EE/LI=
,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;C=
DiOD;AClND;EEvMI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BA=
AA;CH4ZH;AC/MD;EEjNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA=
,4BAAA;CHmaH;ACrND;EElNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;=
EACA,4BAAA;CH0aH;AC3ND;EEnNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uH=
AAA;EACA,4BAAA;CHibH;ACjOD;EEpNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EAC=
A,uHAAA;EACA,4BAAA;CHwbH;ACvOD;EErNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA=
;EACA,uHAAA;EACA,4BAAA;CH+bH;AC1OD;EExLI,8MAAA;EACA,yMAAA;EACA,sMAAA;CHqaH;=
ACtOD;EACE,mBAAA;EClLA,mDAAA;EACQ,2CAAA;CF2ZT;ACvOD;;;EAGE,8BAAA;EEzOE,yEAA=
A;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFuOF,sBAAA;CD6OD;=
AClPD;;;EAQI,kBAAA;CD+OH;ACrOD;ECvME,kDAAA;EACQ,0CAAA;CF+aT;AC/ND;EElQI,yEA=
AA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHoeH;ACrOD;EEnQI=
,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CH2eH;AC3OD;E=
EpQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHkfH;ACj=
PD;EErQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHyfH=
;ACvPD;EEtQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;C=
HggBH;AC7PD;EEvQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4B=
AAA;CHugBH;AC7PD;EE9QI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EA=
CA,4BAAA;EF4QF,sBAAA;EC/NA,0FAAA;EACQ,kFAAA;CFmeT","file":"bootstrap-theme.=
css","sourcesContent":["/*!\n
> * Bootstrap v3.4.1 (https://getbootstrap.com/)\n * Copyright 2011-2019
> Twitter, Inc.\n * Licensed under MIT (
> https://github.com/twbs/bootstrap/blob/master/LICENSE)\n
> */\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.btn-warning=
,\n.btn-danger
> {\n  text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);\n  -webkit-box-shadow: ins=
et
> 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075);\n
> box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0,
> 0,
> 0.075);\n}\n.btn-default:active,\n.btn-primary:active,\n.btn-success:acti=
ve,\n.btn-info:active,\n.btn-warning:active,\n.btn-danger:active,\n.btn-def=
ault.active,\n.btn-primary.active,\n.btn-success.active,\n.btn-info.active,=
\n.btn-warning.active,\n.btn-danger.active
> {\n  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n
> box-shadow: inset 0 3px 5px rgba(0, 0, 0,
> 0.125);\n}\n.btn-default.disabled,\n.btn-primary.disabled,\n.btn-success.=
disabled,\n.btn-info.disabled,\n.btn-warning.disabled,\n.btn-danger.disable=
d,\n.btn-default[disabled],\n.btn-primary[disabled],\n.btn-success[disabled=
],\n.btn-info[disabled],\n.btn-warning[disabled],\n.btn-danger[disabled],\n=
fieldset[disabled]
> .btn-default,\nfieldset[disabled] .btn-primary,\nfieldset[disabled]
> .btn-success,\nfieldset[disabled] .btn-info,\nfieldset[disabled]
> .btn-warning,\nfieldset[disabled] .btn-danger {\n  -webkit-box-shadow:
> none;\n  box-shadow: none;\n}\n.btn-default .badge,\n.btn-primary
> .badge,\n.btn-success .badge,\n.btn-info .badge,\n.btn-warning
> .badge,\n.btn-danger .badge {\n  text-shadow:
> none;\n}\n.btn:active,\n.btn.active {\n  background-image:
> none;\n}\n.btn-default {\n  background-image: -webkit-linear-gradient(top=
,
> #fff 0%, #e0e0e0 100%);\n  background-image: -o-linear-gradient(top, #fff
> 0%, #e0e0e0 100%);\n  background-image: linear-gradient(to bottom, #fff 0=
%,
> #e0e0e0 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffffffff',
> endColorstr=3D'#ffe0e0e0', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color: #dbdbdb;\n  text-shadow: 0
> 1px 0 #fff;\n  border-color:
> #ccc;\n}\n.btn-default:hover,\n.btn-default:focus {\n  background-color:
> #e0e0e0;\n  background-position: 0
> -15px;\n}\n.btn-default:active,\n.btn-default.active {\n  background-colo=
r:
> #e0e0e0;\n  border-color:
> #dbdbdb;\n}\n.btn-default.disabled,\n.btn-default[disabled],\nfieldset[di=
sabled]
> .btn-default,\n.btn-default.disabled:hover,\n.btn-default[disabled]:hover=
,\nfieldset[disabled]
> .btn-default:hover,\n.btn-default.disabled:focus,\n.btn-default[disabled]=
:focus,\nfieldset[disabled]
> .btn-default:focus,\n.btn-default.disabled.focus,\n.btn-default[disabled]=
.focus,\nfieldset[disabled]
> .btn-default.focus,\n.btn-default.disabled:active,\n.btn-default[disabled=
]:active,\nfieldset[disabled]
> .btn-default:active,\n.btn-default.disabled.active,\n.btn-default[disable=
d].active,\nfieldset[disabled]
> .btn-default.active {\n  background-color: #e0e0e0;\n  background-image:
> none;\n}\n.btn-primary {\n  background-image: -webkit-linear-gradient(top=
,
> #337ab7 0%, #265a88 100%);\n  background-image: -o-linear-gradient(top,
> #337ab7 0%, #265a88 100%);\n  background-image: linear-gradient(to bottom=
,
> #337ab7 0%, #265a88 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff265a88', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #245580;\n}\n.btn-primary:hover,\n.btn-primary:focus {\n  background-colo=
r:
> #265a88;\n  background-position: 0
> -15px;\n}\n.btn-primary:active,\n.btn-primary.active {\n  background-colo=
r:
> #265a88;\n  border-color:
> #245580;\n}\n.btn-primary.disabled,\n.btn-primary[disabled],\nfieldset[di=
sabled]
> .btn-primary,\n.btn-primary.disabled:hover,\n.btn-primary[disabled]:hover=
,\nfieldset[disabled]
> .btn-primary:hover,\n.btn-primary.disabled:focus,\n.btn-primary[disabled]=
:focus,\nfieldset[disabled]
> .btn-primary:focus,\n.btn-primary.disabled.focus,\n.btn-primary[disabled]=
.focus,\nfieldset[disabled]
> .btn-primary.focus,\n.btn-primary.disabled:active,\n.btn-primary[disabled=
]:active,\nfieldset[disabled]
> .btn-primary:active,\n.btn-primary.disabled.active,\n.btn-primary[disable=
d].active,\nfieldset[disabled]
> .btn-primary.active {\n  background-color: #265a88;\n  background-image:
> none;\n}\n.btn-success {\n  background-image: -webkit-linear-gradient(top=
,
> #5cb85c 0%, #419641 100%);\n  background-image: -o-linear-gradient(top,
> #5cb85c 0%, #419641 100%);\n  background-image: linear-gradient(to bottom=
,
> #5cb85c 0%, #419641 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5cb85c',
> endColorstr=3D'#ff419641', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #3e8f3e;\n}\n.btn-success:hover,\n.btn-success:focus {\n  background-colo=
r:
> #419641;\n  background-position: 0
> -15px;\n}\n.btn-success:active,\n.btn-success.active {\n  background-colo=
r:
> #419641;\n  border-color:
> #3e8f3e;\n}\n.btn-success.disabled,\n.btn-success[disabled],\nfieldset[di=
sabled]
> .btn-success,\n.btn-success.disabled:hover,\n.btn-success[disabled]:hover=
,\nfieldset[disabled]
> .btn-success:hover,\n.btn-success.disabled:focus,\n.btn-success[disabled]=
:focus,\nfieldset[disabled]
> .btn-success:focus,\n.btn-success.disabled.focus,\n.btn-success[disabled]=
.focus,\nfieldset[disabled]
> .btn-success.focus,\n.btn-success.disabled:active,\n.btn-success[disabled=
]:active,\nfieldset[disabled]
> .btn-success:active,\n.btn-success.disabled.active,\n.btn-success[disable=
d].active,\nfieldset[disabled]
> .btn-success.active {\n  background-color: #419641;\n  background-image:
> none;\n}\n.btn-info {\n  background-image: -webkit-linear-gradient(top,
> #5bc0de 0%, #2aabd2 100%);\n  background-image: -o-linear-gradient(top,
> #5bc0de 0%, #2aabd2 100%);\n  background-image: linear-gradient(to bottom=
,
> #5bc0de 0%, #2aabd2 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5bc0de',
> endColorstr=3D'#ff2aabd2', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #28a4c9;\n}\n.btn-info:hover,\n.btn-info:focus {\n  background-color:
> #2aabd2;\n  background-position: 0
> -15px;\n}\n.btn-info:active,\n.btn-info.active {\n  background-color:
> #2aabd2;\n  border-color:
> #28a4c9;\n}\n.btn-info.disabled,\n.btn-info[disabled],\nfieldset[disabled=
]
> .btn-info,\n.btn-info.disabled:hover,\n.btn-info[disabled]:hover,\nfields=
et[disabled]
> .btn-info:hover,\n.btn-info.disabled:focus,\n.btn-info[disabled]:focus,\n=
fieldset[disabled]
> .btn-info:focus,\n.btn-info.disabled.focus,\n.btn-info[disabled].focus,\n=
fieldset[disabled]
> .btn-info.focus,\n.btn-info.disabled:active,\n.btn-info[disabled]:active,=
\nfieldset[disabled]
> .btn-info:active,\n.btn-info.disabled.active,\n.btn-info[disabled].active=
,\nfieldset[disabled]
> .btn-info.active {\n  background-color: #2aabd2;\n  background-image:
> none;\n}\n.btn-warning {\n  background-image: -webkit-linear-gradient(top=
,
> #f0ad4e 0%, #eb9316 100%);\n  background-image: -o-linear-gradient(top,
> #f0ad4e 0%, #eb9316 100%);\n  background-image: linear-gradient(to bottom=
,
> #f0ad4e 0%, #eb9316 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff0ad4e',
> endColorstr=3D'#ffeb9316', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #e38d13;\n}\n.btn-warning:hover,\n.btn-warning:focus {\n  background-colo=
r:
> #eb9316;\n  background-position: 0
> -15px;\n}\n.btn-warning:active,\n.btn-warning.active {\n  background-colo=
r:
> #eb9316;\n  border-color:
> #e38d13;\n}\n.btn-warning.disabled,\n.btn-warning[disabled],\nfieldset[di=
sabled]
> .btn-warning,\n.btn-warning.disabled:hover,\n.btn-warning[disabled]:hover=
,\nfieldset[disabled]
> .btn-warning:hover,\n.btn-warning.disabled:focus,\n.btn-warning[disabled]=
:focus,\nfieldset[disabled]
> .btn-warning:focus,\n.btn-warning.disabled.focus,\n.btn-warning[disabled]=
.focus,\nfieldset[disabled]
> .btn-warning.focus,\n.btn-warning.disabled:active,\n.btn-warning[disabled=
]:active,\nfieldset[disabled]
> .btn-warning:active,\n.btn-warning.disabled.active,\n.btn-warning[disable=
d].active,\nfieldset[disabled]
> .btn-warning.active {\n  background-color: #eb9316;\n  background-image:
> none;\n}\n.btn-danger {\n  background-image: -webkit-linear-gradient(top,
> #d9534f 0%, #c12e2a 100%);\n  background-image: -o-linear-gradient(top,
> #d9534f 0%, #c12e2a 100%);\n  background-image: linear-gradient(to bottom=
,
> #d9534f 0%, #c12e2a 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9534f',
> endColorstr=3D'#ffc12e2a', GradientType=3D0);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n
> background-repeat: repeat-x;\n  border-color:
> #b92c28;\n}\n.btn-danger:hover,\n.btn-danger:focus {\n  background-color:
> #c12e2a;\n  background-position: 0
> -15px;\n}\n.btn-danger:active,\n.btn-danger.active {\n  background-color:
> #c12e2a;\n  border-color:
> #b92c28;\n}\n.btn-danger.disabled,\n.btn-danger[disabled],\nfieldset[disa=
bled]
> .btn-danger,\n.btn-danger.disabled:hover,\n.btn-danger[disabled]:hover,\n=
fieldset[disabled]
> .btn-danger:hover,\n.btn-danger.disabled:focus,\n.btn-danger[disabled]:fo=
cus,\nfieldset[disabled]
> .btn-danger:focus,\n.btn-danger.disabled.focus,\n.btn-danger[disabled].fo=
cus,\nfieldset[disabled]
> .btn-danger.focus,\n.btn-danger.disabled:active,\n.btn-danger[disabled]:a=
ctive,\nfieldset[disabled]
> .btn-danger:active,\n.btn-danger.disabled.active,\n.btn-danger[disabled].=
active,\nfieldset[disabled]
> .btn-danger.active {\n  background-color: #c12e2a;\n  background-image:
> none;\n}\n.thumbnail,\n.img-thumbnail {\n  -webkit-box-shadow: 0 1px 2px
> rgba(0, 0, 0, 0.075);\n  box-shadow: 0 1px 2px rgba(0, 0, 0,
> 0.075);\n}\n.dropdown-menu > li > a:hover,\n.dropdown-menu > li > a:focus
> {\n  background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8
> 100%);\n  background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8
> 100%);\n  background-image: linear-gradient(to bottom, #f5f5f5 0%, #e8e8e=
8
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff5f5f5',
> endColorstr=3D'#ffe8e8e8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  background-color: #e8e8e8;\n}\n.dropdown-menu > .active >
> a,\n.dropdown-menu > .active > a:hover,\n.dropdown-menu > .active > a:foc=
us
> {\n  background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n  background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n  background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da=
4
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  background-color: #2e6da4;\n}\n.navbar-default {\n
> background-image: -webkit-linear-gradient(top, #ffffff 0%, #f8f8f8
> 100%);\n  background-image: -o-linear-gradient(top, #ffffff 0%, #f8f8f8
> 100%);\n  background-image: linear-gradient(to bottom, #ffffff 0%, #f8f8f=
8
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffffffff',
> endColorstr=3D'#fff8f8f8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  filter: progid:DXImageTransform.Microsoft.gradient(enabled =
=3D
> false);\n  border-radius: 4px;\n  -webkit-box-shadow: inset 0 1px 0
> rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n  box-shadow:
> inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0,
> 0.075);\n}\n.navbar-default .navbar-nav > .open > a,\n.navbar-default
> .navbar-nav > .active > a {\n  background-image:
> -webkit-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);\n
> background-image: -o-linear-gradient(top, #dbdbdb 0%, #e2e2e2 100%);\n
> background-image: linear-gradient(to bottom, #dbdbdb 0%, #e2e2e2 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdbdbdb',
> endColorstr=3D'#ffe2e2e2', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n
> box-shadow: inset 0 3px 9px rgba(0, 0, 0,
> 0.075);\n}\n.navbar-brand,\n.navbar-nav > li > a {\n  text-shadow: 0 1px =
0
> rgba(255, 255, 255, 0.25);\n}\n.navbar-inverse {\n  background-image:
> -webkit-linear-gradient(top, #3c3c3c 0%, #222 100%);\n  background-image:
> -o-linear-gradient(top, #3c3c3c 0%, #222 100%);\n  background-image:
> linear-gradient(to bottom, #3c3c3c 0%, #222 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff3c3c3c',
> endColorstr=3D'#ff222222', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  filter: progid:DXImageTransform.Microsoft.gradient(enabled =
=3D
> false);\n  border-radius: 4px;\n}\n.navbar-inverse .navbar-nav > .open >
> a,\n.navbar-inverse .navbar-nav > .active > a {\n  background-image:
> -webkit-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n
> background-image: -o-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n
> background-image: linear-gradient(to bottom, #080808 0%, #0f0f0f 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff080808',
> endColorstr=3D'#ff0f0f0f', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25);\n
> box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25);\n}\n.navbar-inverse
> .navbar-brand,\n.navbar-inverse .navbar-nav > li > a {\n  text-shadow: 0
> -1px 0 rgba(0, 0, 0,
> 0.25);\n}\n.navbar-static-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom
> {\n  border-radius: 0;\n}\n@media (max-width: 767px) {\n  .navbar
> .navbar-nav .open .dropdown-menu > .active > a,\n  .navbar .navbar-nav
> .open .dropdown-menu > .active > a:hover,\n  .navbar .navbar-nav .open
> .dropdown-menu > .active > a:focus {\n    color: #fff;\n
> background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n    background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4
> 100%);\n    background-image: linear-gradient(to bottom, #337ab7 0%,
> #2e6da4 100%);\n    filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n    background-repeat:
> repeat-x;\n  }\n}\n.alert {\n  text-shadow: 0 1px 0 rgba(255, 255, 255,
> 0.2);\n  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.25), 0 1=
px
> 2px rgba(0, 0, 0, 0.05);\n  box-shadow: inset 0 1px 0 rgba(255, 255, 255,
> 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.alert-success {\n
> background-image: -webkit-linear-gradient(top, #dff0d8 0%, #c8e5bc
> 100%);\n  background-image: -o-linear-gradient(top, #dff0d8 0%, #c8e5bc
> 100%);\n  background-image: linear-gradient(to bottom, #dff0d8 0%, #c8e5b=
c
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdff0d8',
> endColorstr=3D'#ffc8e5bc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #b2dba1;\n}\n.alert-info {\n  background-image=
:
> -webkit-linear-gradient(top, #d9edf7 0%, #b9def0 100%);\n
> background-image: -o-linear-gradient(top, #d9edf7 0%, #b9def0 100%);\n
> background-image: linear-gradient(to bottom, #d9edf7 0%, #b9def0 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9edf7',
> endColorstr=3D'#ffb9def0', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #9acfea;\n}\n.alert-warning {\n
> background-image: -webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0
> 100%);\n  background-image: -o-linear-gradient(top, #fcf8e3 0%, #f8efc0
> 100%);\n  background-image: linear-gradient(to bottom, #fcf8e3 0%, #f8efc=
0
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fffcf8e3',
> endColorstr=3D'#fff8efc0', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #f5e79e;\n}\n.alert-danger {\n
> background-image: -webkit-linear-gradient(top, #f2dede 0%, #e7c3c3
> 100%);\n  background-image: -o-linear-gradient(top, #f2dede 0%, #e7c3c3
> 100%);\n  background-image: linear-gradient(to bottom, #f2dede 0%, #e7c3c=
3
> 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff2dede',
> endColorstr=3D'#ffe7c3c3', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #dca7a7;\n}\n.progress {\n  background-image:
> -webkit-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);\n
> background-image: -o-linear-gradient(top, #ebebeb 0%, #f5f5f5 100%);\n
> background-image: linear-gradient(to bottom, #ebebeb 0%, #f5f5f5 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffebebeb',
> endColorstr=3D'#fff5f5f5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar {\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #286090 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #286090 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #286090 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff286090', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-success {\n  background-image:
> -webkit-linear-gradient(top, #5cb85c 0%, #449d44 100%);\n
> background-image: -o-linear-gradient(top, #5cb85c 0%, #449d44 100%);\n
> background-image: linear-gradient(to bottom, #5cb85c 0%, #449d44 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5cb85c',
> endColorstr=3D'#ff449d44', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-info {\n  background-image:
> -webkit-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);\n
> background-image: -o-linear-gradient(top, #5bc0de 0%, #31b0d5 100%);\n
> background-image: linear-gradient(to bottom, #5bc0de 0%, #31b0d5 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff5bc0de',
> endColorstr=3D'#ff31b0d5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-warning {\n  background-image:
> -webkit-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);\n
> background-image: -o-linear-gradient(top, #f0ad4e 0%, #ec971f 100%);\n
> background-image: linear-gradient(to bottom, #f0ad4e 0%, #ec971f 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff0ad4e',
> endColorstr=3D'#ffec971f', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-danger {\n  background-image:
> -webkit-linear-gradient(top, #d9534f 0%, #c9302c 100%);\n
> background-image: -o-linear-gradient(top, #d9534f 0%, #c9302c 100%);\n
> background-image: linear-gradient(to bottom, #d9534f 0%, #c9302c 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9534f',
> endColorstr=3D'#ffc9302c', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.progress-bar-striped {\n  background-image:
> -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent
> 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255,
> 0.15) 75%, transparent 75%, transparent);\n  background-image:
> -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%,
> transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15)
> 75%, transparent 75%, transparent);\n  background-image:
> linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%,
> transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15)
> 75%, transparent 75%, transparent);\n}\n.list-group {\n  border-radius:
> 4px;\n  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);\n  box-shadow=
:
> 0 1px 2px rgba(0, 0, 0,
> 0.075);\n}\n.list-group-item.active,\n.list-group-item.active:hover,\n.li=
st-group-item.active:focus
> {\n  text-shadow: 0 -1px 0 #286090;\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #2b669a 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2b669a', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #2b669a;\n}\n.list-group-item.active
> .badge,\n.list-group-item.active:hover
> .badge,\n.list-group-item.active:focus .badge {\n  text-shadow:
> none;\n}\n.panel {\n  -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\=
n
> box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.panel-default >
> .panel-heading {\n  background-image: -webkit-linear-gradient(top, #f5f5f=
5
> 0%, #e8e8e8 100%);\n  background-image: -o-linear-gradient(top, #f5f5f5 0=
%,
> #e8e8e8 100%);\n  background-image: linear-gradient(to bottom, #f5f5f5 0%=
,
> #e8e8e8 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff5f5f5',
> endColorstr=3D'#ffe8e8e8', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-primary > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n
> background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n
> background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ff337ab7',
> endColorstr=3D'#ff2e6da4', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-success > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n
> background-image: -o-linear-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n
> background-image: linear-gradient(to bottom, #dff0d8 0%, #d0e9c6 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffdff0d8',
> endColorstr=3D'#ffd0e9c6', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-info > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n
> background-image: -o-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n
> background-image: linear-gradient(to bottom, #d9edf7 0%, #c4e3f3 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffd9edf7',
> endColorstr=3D'#ffc4e3f3', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-warning > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n
> background-image: -o-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n
> background-image: linear-gradient(to bottom, #fcf8e3 0%, #faf2cc 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fffcf8e3',
> endColorstr=3D'#fffaf2cc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.panel-danger > .panel-heading {\n  background-image:
> -webkit-linear-gradient(top, #f2dede 0%, #ebcccc 100%);\n
> background-image: -o-linear-gradient(top, #f2dede 0%, #ebcccc 100%);\n
> background-image: linear-gradient(to bottom, #f2dede 0%, #ebcccc 100%);\n
> filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#fff2dede',
> endColorstr=3D'#ffebcccc', GradientType=3D0);\n  background-repeat:
> repeat-x;\n}\n.well {\n  background-image: -webkit-linear-gradient(top,
> #e8e8e8 0%, #f5f5f5 100%);\n  background-image: -o-linear-gradient(top,
> #e8e8e8 0%, #f5f5f5 100%);\n  background-image: linear-gradient(to bottom=
,
> #e8e8e8 0%, #f5f5f5 100%);\n  filter:
> progid:DXImageTransform.Microsoft.gradient(startColorstr=3D'#ffe8e8e8',
> endColorstr=3D'#fff5f5f5', GradientType=3D0);\n  background-repeat:
> repeat-x;\n  border-color: #dcdcdc;\n  -webkit-box-shadow: inset 0 1px 3p=
x
> rgba(0, 0, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n  box-shadow: ins=
et
> 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n}\n/*#
> sourceMappingURL=3Dbootstrap-theme.css.map */","// stylelint-disable
> selector-no-qualifying-type, selector-max-compound-selectors\n\n/*!\n *
> Bootstrap v3.4.1 (https://getbootstrap.com/)\n * Copyright 2011-2019
> Twitter, Inc.\n * Licensed under MIT (
> https://github.com/twbs/bootstrap/blob/master/LICENSE)\n */\n\n//\n//
> Load core variables and mixins\n//
> --------------------------------------------------\n\n@import
> \"variables.less\";\n@import \"mixins.less\";\n\n\n//\n// Buttons\n//
> --------------------------------------------------\n\n// Common
> styles\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.btn-war=
ning,\n.btn-danger
> {\n  text-shadow: 0 -1px 0 rgba(0, 0, 0, .2);\n  @shadow: inset 0 1px 0
> rgba(255, 255, 255, .15), 0 1px 1px rgba(0, 0, 0, .075);\n
> .box-shadow(@shadow);\n\n  // Reset the shadow\n  &:active,\n  &.active
> {\n    .box-shadow(inset 0 3px 5px rgba(0, 0, 0, .125));\n  }\n\n
> &.disabled,\n  &[disabled],\n  fieldset[disabled] & {\n
> .box-shadow(none);\n  }\n\n  .badge {\n    text-shadow: none;\n  }\n}\n\n=
//
> Mixin for generating new styles\n.btn-styles(@btn-color: #555) {\n
> #gradient > .vertical(@start-color: @btn-color; @end-color:
> darken(@btn-color, 12%));\n  .reset-filter(); // Disable gradients for IE=
9
> because filter bleeds through rounded corners; see
> https://github.com/twbs/bootstrap/issues/10620\n  background-repeat:
> repeat-x;\n  border-color: darken(@btn-color, 14%);\n\n  &:hover,\n
> &:focus  {\n    background-color: darken(@btn-color, 12%);\n
> background-position: 0 -15px;\n  }\n\n  &:active,\n  &.active {\n
> background-color: darken(@btn-color, 12%);\n    border-color:
> darken(@btn-color, 14%);\n  }\n\n  &.disabled,\n  &[disabled],\n
> fieldset[disabled] & {\n    &,\n    &:hover,\n    &:focus,\n    &.focus,\=
n
>

--00000000000023734e05ba587e01
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"color:rgb(80,0,80);font-family:sans-serif;=
font-size:12.8px">I sent this patch October last year and couldn&#39;t be i=
ntegrated since it was the end of the development cycle.</span></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 2 Fe=
b 2021, 12:07 pm Meh Mbeh Ida Delphine via <a href=3D"http://lists.yoctopro=
ject.org">lists.yoctoproject.org</a>, &lt;idadelm=3D<a href=3D"mailto:gmail=
.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">From: Meh Mbeh Ida Delphine &lt;<=
a href=3D"mailto:idadelm@gmail.com" target=3D"_blank" rel=3D"noreferrer">id=
adelm@gmail.com</a>&gt;<br>
<br>
Added SPDX identifiers to all .py files except those in migrations director=
y.<br>
Added final new line in all files without it.<br>
<br>
Fixes: [YOCTO #13527]<br>
<br>
Signed-off-by: Meh Mbeh Ida Delphine &lt;<a href=3D"mailto:idadelm@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">idadelm@gmail.com</a>&gt;<br>
---<br>
=C2=A0__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A01 +<br>
=C2=A0docker/settings.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0dockersetup.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<=
br>
=C2=A0layerindex/__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A05 +<br>
=C2=A0layerindex/admin.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/auth_forms.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/auth_views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/bulkchange.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/context_processors.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/forms.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/layerconfparse.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A01 +<br>
=C2=A0layerindex/middleware.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/querysethelper.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A08 +<br>
=C2=A0layerindex/recipedesc.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/recipeparse.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/restperm.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A06 +<br>
=C2=A0layerindex/restviews.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/securityquestions.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A08 +<br>
=C2=A0layerindex/static/css/bootstrap-theme.css=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap-theme.css.map |=C2=A0 =C2=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap-theme.min.css |=C2=A0 =C2=A02 +-<br>
=C2=A0.../static/css/bootstrap-theme.min.css.map=C2=A0 =C2=A0 |=C2=A0 =C2=
=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap.css=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap.css.map=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap.min.css=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A02 +-<br>
=C2=A0layerindex/static/css/bootstrap.min.css.map=C2=A0 =C2=A0|=C2=A0 =C2=
=A02 +-<br>
=C2=A0.../fonts/glyphicons-halflings-regular.svg=C2=A0 =C2=A0 |=C2=A0 =C2=
=A02 +-<br>
=C2=A0layerindex/static/js/Chart.js=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| 596 +++++++++---------<br>
=C2=A0layerindex/static/js/bootstrap.min.js=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A02 +-<br>
=C2=A0layerindex/tasks.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/templatetags/__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A05 +<br>
=C2=A0layerindex/templatetags/extrafilters.py=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A06 +<br>
=C2=A0layerindex/tools/fedora-fetch.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/fixup_duplicates.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/github-fetch.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_classic.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_classic_wiki.py=C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_layer.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_layers.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_otherdistro.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_project.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/import_wiki_layers.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/site_name.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/tools/update_classic_status.py=C2=A0 =C2=A0 =C2=A0|=C2=A0 =
=C2=A02 +<br>
=C2=A0layerindex/tools/webapi-test.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/update.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/update_layer.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/urls_branch.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/utils.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0layerindex/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0manage.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 =C2=A02 +<br>
=C2=A0password_validation.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A05 +<br>
=C2=A0pytest.ini=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
=C2=A05 +<br>
=C2=A0rrs/__init__.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A05 =
+<br>
=C2=A0rrs/admin.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A02 +<br>
=C2=A0rrs/apps.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A06 +<br>
=C2=A0rrs/context_processors.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/models.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=
=A02 +<br>
=C2=A0rrs/tools/common.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/dump_upgrades.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/historytool.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/rrs_distros.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/rrs_maintainer_history.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/rrs_upgrade_history.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/rrs_upstream_email.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/rrs_upstream_history.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/tools/upgrade_history_internal.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A02 +<br>
=C2=A0rrs/urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A08 +<br>
=C2=A0rrs/views.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A08 +<br>
=C2=A0rrs/wsgi.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A06 +<br>
=C2=A0settings.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=
=A0 =C2=A02 +<br>
=C2=A0templates/500.html=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +-<br>
=C2=A0templates/layerindex/submitemail.txt=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 =C2=A02 +-<br>
=C2=A0tests/test_update.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A02 +<br>
=C2=A0urls.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A02 +<br>
=C2=A0wsgi.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 =C2=A05 +<br>
=C2=A078 files changed, 496 insertions(+), 310 deletions(-)<br>
<br>
diff --git a/__init__.py b/__init__.py<br>
index e69de29..548d2d4 100644<br>
--- a/__init__.py<br>
+++ b/__init__.py<br>
@@ -0,0 +1 @@<br>
+# SPDX-License-Identifier: MIT<br>
diff --git a/docker/settings.py b/docker/settings.py<br>
index fb7d376..7330ab9 100644<br>
--- a/docker/settings.py<br>
+++ b/docker/settings.py<br>
@@ -2,6 +2,8 @@<br>
=C2=A0#<br>
=C2=A0# Based on settings.py from the Django project template<br>
=C2=A0# Copyright (c) Django Software Foundation and individual contributor=
s.<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import os<br>
<br>
diff --git a/dockersetup.py b/dockersetup.py<br>
index 3cc8b2d..e45a846 100755<br>
--- a/dockersetup.py<br>
+++ b/dockersetup.py<br>
@@ -6,6 +6,8 @@<br>
=C2=A0# Author: Amber Elliot &lt;<a href=3D"mailto:amber.n.elliot@intel.com=
" target=3D"_blank" rel=3D"noreferrer">amber.n.elliot@intel.com</a>&gt;<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0# This script will make a cluster of 5 containers:<br>
=C2=A0#<br>
diff --git a/layerindex/__init__.py b/layerindex/__init__.py<br>
index e69de29..11788b1 100644<br>
--- a/layerindex/__init__.py<br>
+++ b/layerindex/__init__.py<br>
@@ -0,0 +1,5 @@<br>
+# Copyright (C) 2014 Intel Corporation<br>
+#<br>
+# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
diff --git a/layerindex/admin.py b/layerindex/admin.py<br>
index 9ef781d..9ed6102 100644<br>
--- a/layerindex/admin.py<br>
+++ b/layerindex/admin.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2013 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from layerindex.models import *<br>
=C2=A0from django.contrib import admin<br>
diff --git a/layerindex/auth_forms.py b/layerindex/auth_forms.py<br>
index fc3d2d1..7af48f9 100644<br>
--- a/layerindex/auth_forms.py<br>
+++ b/layerindex/auth_forms.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2018 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from captcha.fields import CaptchaField<br>
=C2=A0from django import forms<br>
diff --git a/layerindex/auth_views.py b/layerindex/auth_views.py<br>
index 152f171..08e0334 100644<br>
--- a/layerindex/auth_views.py<br>
+++ b/layerindex/auth_views.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2018 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from django.contrib import messages<br>
=C2=A0from django.contrib.auth import logout<br>
diff --git a/layerindex/bulkchange.py b/layerindex/bulkchange.py<br>
index 3d1ee2b..6382053 100644<br>
--- a/layerindex/bulkchange.py<br>
+++ b/layerindex/bulkchange.py<br>
@@ -5,6 +5,8 @@<br>
=C2=A0# Copyright (C) 2013, 2016, 2018 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import sys<br>
=C2=A0import os<br>
diff --git a/layerindex/context_processors.py b/layerindex/context_processo=
rs.py<br>
index 3352e63..2cc0380 100644<br>
--- a/layerindex/context_processors.py<br>
+++ b/layerindex/context_processors.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2013, 2018 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from layerindex.models import Branch, LayerItem, SiteNotice<br>
=C2=A0from django.contrib.sites.models import Site<br>
diff --git a/layerindex/forms.py b/layerindex/forms.py<br>
index 4061d4b..9615859 100644<br>
--- a/layerindex/forms.py<br>
+++ b/layerindex/forms.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2013, 2016-2019 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import re<br>
=C2=A0from collections import OrderedDict<br>
diff --git a/layerindex/layerconfparse.py b/layerindex/layerconfparse.py<br=
>
index a812140..84ec005 100644<br>
--- a/layerindex/layerconfparse.py<br>
+++ b/layerindex/layerconfparse.py<br>
@@ -5,6 +5,7 @@<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
=C2=A0#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import sys<br>
=C2=A0import os<br>
diff --git a/layerindex/middleware.py b/layerindex/middleware.py<br>
index afe34a3..527cc8b 100644<br>
--- a/layerindex/middleware.py<br>
+++ b/layerindex/middleware.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2019 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from django.utils.deprecation import MiddlewareMixin<br>
=C2=A0from django.http import HttpResponseRedirect<br>
diff --git a/layerindex/models.py b/layerindex/models.py<br>
index 99c68e1..329cc33 100644<br>
--- a/layerindex/models.py<br>
+++ b/layerindex/models.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2013-2018 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from django.db import models<br>
=C2=A0from datetime import datetime<br>
diff --git a/layerindex/querysethelper.py b/layerindex/querysethelper.py<br=
>
index 5a856ee..fb26a17 100644<br>
--- a/layerindex/querysethelper.py<br>
+++ b/layerindex/querysethelper.py<br>
@@ -1,3 +1,11 @@<br>
+# layerindex-web - queryset helper definitions<br>
+#<br>
+# Copyright (C) 2013-2018 Intel Corporation<br>
+#<br>
+# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
+<br>
=C2=A0import operator<br>
=C2=A0import functools<br>
=C2=A0from django.db.models import Q, CharField<br>
diff --git a/layerindex/recipedesc.py b/layerindex/recipedesc.py<br>
index 26280ee..be47f6e 100644<br>
--- a/layerindex/recipedesc.py<br>
+++ b/layerindex/recipedesc.py<br>
@@ -4,6 +4,8 @@<br>
=C2=A0#<br>
=C2=A0# Copyright (C) 2012 Intel Corporation<br>
=C2=A0# Author: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.int=
el.com" target=3D"_blank" rel=3D"noreferrer">paul.eggleton@linux.intel.com<=
/a>&gt;<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import sys<br>
=C2=A0import os.path<br>
diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py<br>
index 35867ad..62c08e9 100644<br>
--- a/layerindex/recipeparse.py<br>
+++ b/layerindex/recipeparse.py<br>
@@ -4,6 +4,8 @@<br>
=C2=A0# Author: Paul Eggleton &lt;<a href=3D"mailto:paul.eggleton@linux.int=
el.com" target=3D"_blank" rel=3D"noreferrer">paul.eggleton@linux.intel.com<=
/a>&gt;<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0import sys<br>
=C2=A0import os<br>
diff --git a/layerindex/restperm.py b/layerindex/restperm.py<br>
index fb9f715..5d74c66 100644<br>
--- a/layerindex/restperm.py<br>
+++ b/layerindex/restperm.py<br>
@@ -1,3 +1,9 @@<br>
+# Copyright (C) 2013-2018 Intel Corporation<br>
+#<br>
+# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
+<br>
=C2=A0from rest_framework import permissions<br>
<br>
=C2=A0class ReadOnlyPermission(permissions.BasePermission):<br>
diff --git a/layerindex/restviews.py b/layerindex/restviews.py<br>
index 7de4cd7..91779f5 100644<br>
--- a/layerindex/restviews.py<br>
+++ b/layerindex/restviews.py<br>
@@ -3,6 +3,8 @@<br>
=C2=A0# Copyright (C) 2014, 2016-2019 Intel Corporation<br>
=C2=A0#<br>
=C2=A0# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
<br>
=C2=A0from layerindex.models import Branch, LayerItem, LayerMaintainer, YPC=
ompatibleVersion, LayerNote, LayerBranch, LayerDependency, Recipe, Machine,=
 Distro, BBClass, Source, Patch, PackageConfig, StaticBuildDep, DynamicBuil=
dDep, RecipeFileDependency, BBAppend, IncFile<br>
=C2=A0from rest_framework import viewsets, serializers, pagination<br>
diff --git a/layerindex/securityquestions.py b/layerindex/securityquestions=
.py<br>
index a6a0e1c..1883b11 100644<br>
--- a/layerindex/securityquestions.py<br>
+++ b/layerindex/securityquestions.py<br>
@@ -1,3 +1,11 @@<br>
+# layerindex-web - Security Questions<br>
+#<br>
+# Copyright (C) 2013-2018 Intel Corporation<br>
+#<br>
+# Licensed under the MIT license, see COPYING.MIT for details<br>
+#<br>
+# SPDX-License-Identifier: MIT<br>
+<br>
=C2=A0security_questions =3D [&quot;What was the name of your first pet?&qu=
ot;,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;What was the last name of your third grade teacher?&quot;,=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &quot;What is your favorite pizza topping?&quot;,<br>
diff --git a/layerindex/static/css/bootstrap-theme.css b/layerindex/static/=
css/bootstrap-theme.css<br>
index ea33f76..aeab5d1 100644<br>
--- a/layerindex/static/css/bootstrap-theme.css<br>
+++ b/layerindex/static/css/bootstrap-theme.css<br>
@@ -584,4 +584,4 @@ fieldset[disabled] .btn-danger.active {<br>
=C2=A0 =C2=A0-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px=
 0 rgba(255, 255, 255, 0.1);<br>
=C2=A0 =C2=A0box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1px 0 rgba(=
255, 255, 255, 0.1);<br>
=C2=A0}<br>
-/*# sourceMappingURL=3Dbootstrap-theme.css.map */<br>
\ No newline at end of file<br>
+/*# sourceMappingURL=3Dbootstrap-theme.css.map */<br>
diff --git a/layerindex/static/css/bootstrap-theme.css.map b/layerindex/sta=
tic/css/bootstrap-theme.css.map<br>
index 949d097..13747e4 100644<br>
--- a/layerindex/static/css/bootstrap-theme.css.map<br>
+++ b/layerindex/static/css/bootstrap-theme.css.map<br>
@@ -1 +1 @@<br>
-{&quot;version&quot;:3,&quot;sources&quot;:[&quot;bootstrap-theme.css&quot=
;,&quot;less/theme.less&quot;,&quot;less/mixins/vendor-prefixes.less&quot;,=
&quot;less/mixins/gradients.less&quot;,&quot;less/mixins/reset-filter.less&=
quot;],&quot;names&quot;:[],&quot;mappings&quot;:&quot;AAAA;;;;GAIG;ACiBH;;=
;;;;EAME,yCAAA;EC2CA,4FAAA;EACQ,oFAAA;CFzDT;ACkBC;;;;;;;;;;;;ECsCA,yDAAA;EA=
CQ,iDAAA;CF1CT;ACQC;;;;;;;;;;;;;;;;;;ECiCA,yBAAA;EACQ,iBAAA;CFrBT;AC7BD;;;;=
;;EAuBI,kBAAA;CDcH;AC2BC;;EAEE,uBAAA;CDzBH;AC8BD;EEvEI,sEAAA;EACA,iEAAA;EAC=
A,2FAAA;EAAA,oEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;EAyCA,0BAA=
A;EACA,mBAAA;CDtBD;AClBC;;EAEE,0BAAA;EACA,6BAAA;CDoBH;ACjBC;;EAEE,0BAAA;EAC=
A,sBAAA;CDmBH;ACbG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2BL;ACPD;EE5EI,=
yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;E=
ACA,sBAAA;CD4DD;AC1DC;;EAEE,0BAAA;EACA,6BAAA;CD4DH;ACzDC;;EAEE,0BAAA;EACA,s=
BAAA;CD2DH;ACrDG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmEL;AC9CD;EE7EI,y=
EAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EA=
CA,sBAAA;CDoGD;AClGC;;EAEE,0BAAA;EACA,6BAAA;CDoGH;ACjGC;;EAEE,0BAAA;EACA,sB=
AAA;CDmGH;AC7FG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2GL;ACrFD;EE9EI,yE=
AAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EAC=
A,sBAAA;CD4ID;AC1IC;;EAEE,0BAAA;EACA,6BAAA;CD4IH;ACzIC;;EAEE,0BAAA;EACA,sBA=
AA;CD2IH;ACrIG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmJL;AC5HD;EE/EI,yEA=
AA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA=
,sBAAA;CDoLD;AClLC;;EAEE,0BAAA;EACA,6BAAA;CDoLH;ACjLC;;EAEE,0BAAA;EACA,sBAA=
A;CDmLH;AC7KG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2LL;ACnKD;EEhFI,yEAA=
A;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,=
sBAAA;CD4ND;AC1NC;;EAEE,0BAAA;EACA,6BAAA;CD4NH;ACzNC;;EAEE,0BAAA;EACA,sBAAA=
;CD2NH;ACrNG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmOL;ACpMD;;ECtCE,mDAA=
A;EACQ,2CAAA;CF8OT;AC/LD;;EEjGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA=
,uHAAA;EACA,4BAAA;EFgGF,0BAAA;CDqMD;ACnMD;;;EEtGI,yEAAA;EACA,oEAAA;EACA,8FA=
AA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFsGF,0BAAA;CDyMD;AChMD;EEnHI,yEAAA;EAC=
A,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;EHqIA,mBAAA=
;ECrEA,4FAAA;EACQ,oFAAA;CF4QT;AC3MD;;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA=
,uEAAA;EACA,uHAAA;EACA,4BAAA;ED6CF,yDAAA;EACQ,iDAAA;CFsRT;ACxMD;;EAEE,+CAAA=
;CD0MD;ACtMD;EEtII,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA;EACA,uHAAA;EACA,4=
BAAA;ECnBF,oEAAA;EHwJA,mBAAA;CD4MD;AC/MD;;EEtII,yEAAA;EACA,oEAAA;EACA,8FAAA=
;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ED6CF,wDAAA;EACQ,gDAAA;CF6ST;ACzND;;EAYI,=
0CAAA;CDiNH;AC5MD;;;EAGE,iBAAA;CD8MD;AC1MD;EAEI;;;IAGE,YAAA;IEnKF,yEAAA;IAC=
A,oEAAA;IACA,8FAAA;IAAA,uEAAA;IACA,uHAAA;IACA,4BAAA;GH+WD;CACF;ACrMD;EACE,8=
CAAA;EC/HA,2FAAA;EACQ,mFAAA;CFuUT;AC7LD;EE5LI,yEAAA;EACA,oEAAA;EACA,8FAAA;E=
AAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDyMD;ACpMD;EE7LI,yEAAA;EACA,oE=
AAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDiND;AC3MD;EE9=
LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA=
;CDyND;AClND;EE/LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4=
BAAA;EFoLF,sBAAA;CDiOD;AClND;EEvMI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;E=
ACA,uHAAA;EACA,4BAAA;CH4ZH;AC/MD;EEjNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEA=
AA;EACA,uHAAA;EACA,4BAAA;CHmaH;ACrND;EElNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA=
,uEAAA;EACA,uHAAA;EACA,4BAAA;CH0aH;AC3ND;EEnNI,yEAAA;EACA,oEAAA;EACA,8FAAA;=
EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHibH;ACjOD;EEpNI,yEAAA;EACA,oEAAA;EACA,8F=
AAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHwbH;ACvOD;EErNI,yEAAA;EACA,oEAAA;EAC=
A,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CH+bH;AC1OD;EExLI,8MAAA;EACA,yMAAA=
;EACA,sMAAA;CHqaH;ACtOD;EACE,mBAAA;EClLA,mDAAA;EACQ,2CAAA;CF2ZT;ACvOD;;;EAG=
E,8BAAA;EEzOE,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;=
EFuOF,sBAAA;CD6OD;AClPD;;;EAQI,kBAAA;CD+OH;ACrOD;ECvME,kDAAA;EACQ,0CAAA;CF+=
aT;AC/ND;EElQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA=
;CHoeH;ACrOD;EEnQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4=
BAAA;CH2eH;AC3OD;EEpQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EA=
CA,4BAAA;CHkfH;ACjPD;EErQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAA=
A;EACA,4BAAA;CHyfH;ACvPD;EEtQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,=
uHAAA;EACA,4BAAA;CHggBH;AC7PD;EEvQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;=
EACA,uHAAA;EACA,4BAAA;CHugBH;AC7PD;EE9QI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,u=
EAAA;EACA,uHAAA;EACA,4BAAA;EF4QF,sBAAA;EC/NA,0FAAA;EACQ,kFAAA;CFmeT&quot;,&=
quot;file&quot;:&quot;bootstrap-theme.css&quot;,&quot;sourcesContent&quot;:=
[&quot;/*!\n * Bootstrap v3.4.1 (<a href=3D"https://getbootstrap.com/" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://getbootstrap.com/</a>)=
\n * Copyright 2011-2019 Twitter, Inc.\n * Licensed under MIT (<a href=3D"h=
ttps://github.com/twbs/bootstrap/blob/master/LICENSE" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/twbs/bootstrap/blob/master/LI=
CENSE</a>)\n */\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.=
btn-warning,\n.btn-danger {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2=
);\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1=
px 1px rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: inset 0 1px 0 rgba(255, 25=
5, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075);\n}\n.btn-default:active,\n.b=
tn-primary:active,\n.btn-success:active,\n.btn-info:active,\n.btn-warning:a=
ctive,\n.btn-danger:active,\n.btn-default.active,\n.btn-primary.active,\n.b=
tn-success.active,\n.btn-info.active,\n.btn-warning.active,\n.btn-danger.ac=
tive {\n=C2=A0 -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n=
=C2=A0 box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n}\n.btn-default.d=
isabled,\n.btn-primary.disabled,\n.btn-success.disabled,\n.btn-info.disable=
d,\n.btn-warning.disabled,\n.btn-danger.disabled,\n.btn-default[disabled],\=
n.btn-primary[disabled],\n.btn-success[disabled],\n.btn-info[disabled],\n.b=
tn-warning[disabled],\n.btn-danger[disabled],\nfieldset[disabled] .btn-defa=
ult,\nfieldset[disabled] .btn-primary,\nfieldset[disabled] .btn-success,\nf=
ieldset[disabled] .btn-info,\nfieldset[disabled] .btn-warning,\nfieldset[di=
sabled] .btn-danger {\n=C2=A0 -webkit-box-shadow: none;\n=C2=A0 box-shadow:=
 none;\n}\n.btn-default .badge,\n.btn-primary .badge,\n.btn-success .badge,=
\n.btn-info .badge,\n.btn-warning .badge,\n.btn-danger .badge {\n=C2=A0 tex=
t-shadow: none;\n}\n.btn:active,\n.btn.active {\n=C2=A0 background-image: n=
one;\n}\n.btn-default {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #fff 0%, #e0e0e0 100%);\n=C2=A0 background-image: -o-linear-gradient(to=
p, #fff 0%, #e0e0e0 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #fff 0%, #e0e0e0 100%);\n=C2=A0 filter: progid:DXImageTransform.Micros=
oft.gradient(startColorstr=3D&#39;#ffffffff&#39;, endColorstr=3D&#39;#ffe0e=
0e0&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Micros=
oft.gradient(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #dbdbdb;\n=C2=A0 text-shadow: 0 1px 0 #fff;\n=C2=A0 borde=
r-color: #ccc;\n}\n.btn-default:hover,\n.btn-default:focus {\n=C2=A0 backgr=
ound-color: #e0e0e0;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-default=
:active,\n.btn-default.active {\n=C2=A0 background-color: #e0e0e0;\n=C2=A0 =
border-color: #dbdbdb;\n}\n.btn-default.disabled,\n.btn-default[disabled],\=
nfieldset[disabled] .btn-default,\n.btn-default.disabled:hover,\n.btn-defau=
lt[disabled]:hover,\nfieldset[disabled] .btn-default:hover,\n.btn-default.d=
isabled:focus,\n.btn-default[disabled]:focus,\nfieldset[disabled] .btn-defa=
ult:focus,\n.btn-default.disabled.focus,\n.btn-default[disabled].focus,\nfi=
eldset[disabled] .btn-default.focus,\n.btn-default.disabled:active,\n.btn-d=
efault[disabled]:active,\nfieldset[disabled] .btn-default:active,\n.btn-def=
ault.disabled.active,\n.btn-default[disabled].active,\nfieldset[disabled] .=
btn-default.active {\n=C2=A0 background-color: #e0e0e0;\n=C2=A0 background-=
image: none;\n}\n.btn-primary {\n=C2=A0 background-image: -webkit-linear-gr=
adient(top, #337ab7 0%, #265a88 100%);\n=C2=A0 background-image: -o-linear-=
gradient(top, #337ab7 0%, #265a88 100%);\n=C2=A0 background-image: linear-g=
radient(to bottom, #337ab7 0%, #265a88 100%);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColor=
str=3D&#39;#ff265a88&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(enabled =3D false);\n=C2=A0 background-repeat=
: repeat-x;\n=C2=A0 border-color: #245580;\n}\n.btn-primary:hover,\n.btn-pr=
imary:focus {\n=C2=A0 background-color: #265a88;\n=C2=A0 background-positio=
n: 0 -15px;\n}\n.btn-primary:active,\n.btn-primary.active {\n=C2=A0 backgro=
und-color: #265a88;\n=C2=A0 border-color: #245580;\n}\n.btn-primary.disable=
d,\n.btn-primary[disabled],\nfieldset[disabled] .btn-primary,\n.btn-primary=
.disabled:hover,\n.btn-primary[disabled]:hover,\nfieldset[disabled] .btn-pr=
imary:hover,\n.btn-primary.disabled:focus,\n.btn-primary[disabled]:focus,\n=
fieldset[disabled] .btn-primary:focus,\n.btn-primary.disabled.focus,\n.btn-=
primary[disabled].focus,\nfieldset[disabled] .btn-primary.focus,\n.btn-prim=
ary.disabled:active,\n.btn-primary[disabled]:active,\nfieldset[disabled] .b=
tn-primary:active,\n.btn-primary.disabled.active,\n.btn-primary[disabled].a=
ctive,\nfieldset[disabled] .btn-primary.active {\n=C2=A0 background-color: =
#265a88;\n=C2=A0 background-image: none;\n}\n.btn-success {\n=C2=A0 backgro=
und-image: -webkit-linear-gradient(top, #5cb85c 0%, #419641 100%);\n=C2=A0 =
background-image: -o-linear-gradient(top, #5cb85c 0%, #419641 100%);\n=C2=
=A0 background-image: linear-gradient(to bottom, #5cb85c 0%, #419641 100%);=
\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=
=3D&#39;#ff5cb85c&#39;, endColorstr=3D&#39;#ff419641&#39;, GradientType=3D0=
);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D f=
alse);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #3e8f3e;\=
n}\n.btn-success:hover,\n.btn-success:focus {\n=C2=A0 background-color: #41=
9641;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-success:active,\n.btn-=
success.active {\n=C2=A0 background-color: #419641;\n=C2=A0 border-color: #=
3e8f3e;\n}\n.btn-success.disabled,\n.btn-success[disabled],\nfieldset[disab=
led] .btn-success,\n.btn-success.disabled:hover,\n.btn-success[disabled]:ho=
ver,\nfieldset[disabled] .btn-success:hover,\n.btn-success.disabled:focus,\=
n.btn-success[disabled]:focus,\nfieldset[disabled] .btn-success:focus,\n.bt=
n-success.disabled.focus,\n.btn-success[disabled].focus,\nfieldset[disabled=
] .btn-success.focus,\n.btn-success.disabled:active,\n.btn-success[disabled=
]:active,\nfieldset[disabled] .btn-success:active,\n.btn-success.disabled.a=
ctive,\n.btn-success[disabled].active,\nfieldset[disabled] .btn-success.act=
ive {\n=C2=A0 background-color: #419641;\n=C2=A0 background-image: none;\n}=
\n.btn-info {\n=C2=A0 background-image: -webkit-linear-gradient(top, #5bc0d=
e 0%, #2aabd2 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #5bc=
0de 0%, #2aabd2 100%);\n=C2=A0 background-image: linear-gradient(to bottom,=
 #5bc0de 0%, #2aabd2 100%);\n=C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(startColorstr=3D&#39;#ff5bc0de&#39;, endColorstr=3D&#39;#ff2aab=
d2&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #28a4c9;\n}\n.btn-info:hover,\n.btn-info:focus {\n=C2=A0 =
background-color: #2aabd2;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-i=
nfo:active,\n.btn-info.active {\n=C2=A0 background-color: #2aabd2;\n=C2=A0 =
border-color: #28a4c9;\n}\n.btn-info.disabled,\n.btn-info[disabled],\nfield=
set[disabled] .btn-info,\n.btn-info.disabled:hover,\n.btn-info[disabled]:ho=
ver,\nfieldset[disabled] .btn-info:hover,\n.btn-info.disabled:focus,\n.btn-=
info[disabled]:focus,\nfieldset[disabled] .btn-info:focus,\n.btn-info.disab=
led.focus,\n.btn-info[disabled].focus,\nfieldset[disabled] .btn-info.focus,=
\n.btn-info.disabled:active,\n.btn-info[disabled]:active,\nfieldset[disable=
d] .btn-info:active,\n.btn-info.disabled.active,\n.btn-info[disabled].activ=
e,\nfieldset[disabled] .btn-info.active {\n=C2=A0 background-color: #2aabd2=
;\n=C2=A0 background-image: none;\n}\n.btn-warning {\n=C2=A0 background-ima=
ge: -webkit-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 backgro=
und-image: -o-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 backg=
round-image: linear-gradient(to bottom, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 =
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#ff=
f0ad4e&#39;, endColorstr=3D&#39;#ffeb9316&#39;, GradientType=3D0);\n=C2=A0 =
filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n=C2=
=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #e38d13;\n}\n.btn-wa=
rning:hover,\n.btn-warning:focus {\n=C2=A0 background-color: #eb9316;\n=C2=
=A0 background-position: 0 -15px;\n}\n.btn-warning:active,\n.btn-warning.ac=
tive {\n=C2=A0 background-color: #eb9316;\n=C2=A0 border-color: #e38d13;\n}=
\n.btn-warning.disabled,\n.btn-warning[disabled],\nfieldset[disabled] .btn-=
warning,\n.btn-warning.disabled:hover,\n.btn-warning[disabled]:hover,\nfiel=
dset[disabled] .btn-warning:hover,\n.btn-warning.disabled:focus,\n.btn-warn=
ing[disabled]:focus,\nfieldset[disabled] .btn-warning:focus,\n.btn-warning.=
disabled.focus,\n.btn-warning[disabled].focus,\nfieldset[disabled] .btn-war=
ning.focus,\n.btn-warning.disabled:active,\n.btn-warning[disabled]:active,\=
nfieldset[disabled] .btn-warning:active,\n.btn-warning.disabled.active,\n.b=
tn-warning[disabled].active,\nfieldset[disabled] .btn-warning.active {\n=C2=
=A0 background-color: #eb9316;\n=C2=A0 background-image: none;\n}\n.btn-dan=
ger {\n=C2=A0 background-image: -webkit-linear-gradient(top, #d9534f 0%, #c=
12e2a 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #d9534f 0%, =
#c12e2a 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #d9534f=
 0%, #c12e2a 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradi=
ent(startColorstr=3D&#39;#ffd9534f&#39;, endColorstr=3D&#39;#ffc12e2a&#39;,=
 GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradi=
ent(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border=
-color: #b92c28;\n}\n.btn-danger:hover,\n.btn-danger:focus {\n=C2=A0 backgr=
ound-color: #c12e2a;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-danger:=
active,\n.btn-danger.active {\n=C2=A0 background-color: #c12e2a;\n=C2=A0 bo=
rder-color: #b92c28;\n}\n.btn-danger.disabled,\n.btn-danger[disabled],\nfie=
ldset[disabled] .btn-danger,\n.btn-danger.disabled:hover,\n.btn-danger[disa=
bled]:hover,\nfieldset[disabled] .btn-danger:hover,\n.btn-danger.disabled:f=
ocus,\n.btn-danger[disabled]:focus,\nfieldset[disabled] .btn-danger:focus,\=
n.btn-danger.disabled.focus,\n.btn-danger[disabled].focus,\nfieldset[disabl=
ed] .btn-danger.focus,\n.btn-danger.disabled:active,\n.btn-danger[disabled]=
:active,\nfieldset[disabled] .btn-danger:active,\n.btn-danger.disabled.acti=
ve,\n.btn-danger[disabled].active,\nfieldset[disabled] .btn-danger.active {=
\n=C2=A0 background-color: #c12e2a;\n=C2=A0 background-image: none;\n}\n.th=
umbnail,\n.img-thumbnail {\n=C2=A0 -webkit-box-shadow: 0 1px 2px rgba(0, 0,=
 0, 0.075);\n=C2=A0 box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);\n}\n.dropdo=
wn-menu &gt; li &gt; a:hover,\n.dropdown-menu &gt; li &gt; a:focus {\n=C2=
=A0 background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%=
);\n=C2=A0 background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8 10=
0%);\n=C2=A0 background-image: linear-gradient(to bottom, #f5f5f5 0%, #e8e8=
e8 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startC=
olorstr=3D&#39;#fff5f5f5&#39;, endColorstr=3D&#39;#ffe8e8e8&#39;, GradientT=
ype=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 background-color: #e=
8e8e8;\n}\n.dropdown-menu &gt; .active &gt; a,\n.dropdown-menu &gt; .active=
 &gt; a:hover,\n.dropdown-menu &gt; .active &gt; a:focus {\n=C2=A0 backgrou=
nd-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n=C2=A0 b=
ackground-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n=C2=A0=
 background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);\n=
=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&=
#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2e6da4&#39;, GradientType=3D0);\n=
=C2=A0 background-repeat: repeat-x;\n=C2=A0 background-color: #2e6da4;\n}\n=
.navbar-default {\n=C2=A0 background-image: -webkit-linear-gradient(top, #f=
fffff 0%, #f8f8f8 100%);\n=C2=A0 background-image: -o-linear-gradient(top, =
#ffffff 0%, #f8f8f8 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #ffffff 0%, #f8f8f8 100%);\n=C2=A0 filter: progid:DXImageTransform.Mic=
rosoft.gradient(startColorstr=3D&#39;#ffffffff&#39;, endColorstr=3D&#39;#ff=
f8f8f8&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\=
n=C2=A0 border-radius: 4px;\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(=
255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: i=
nset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n}\=
n.navbar-default .navbar-nav &gt; .open &gt; a,\n.navbar-default .navbar-na=
v &gt; .active &gt; a {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 background-image: -o-linear-gradient=
(top, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 background-image: linear-gradient(=
to bottom, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 filter: progid:DXImageTransfo=
rm.Microsoft.gradient(startColorstr=3D&#39;#ffdbdbdb&#39;, endColorstr=3D&#=
39;#ffe2e2e2&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\=
n=C2=A0 -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n=C2=A0 b=
ox-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n}\n.navbar-brand,\n.navba=
r-nav &gt; li &gt; a {\n=C2=A0 text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2=
5);\n}\n.navbar-inverse {\n=C2=A0 background-image: -webkit-linear-gradient=
(top, #3c3c3c 0%, #222 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #3c3c3c 0%, #222 100%);\n=C2=A0 background-image: linear-gradient(to b=
ottom, #3c3c3c 0%, #222 100%);\n=C2=A0 filter: progid:DXImageTransform.Micr=
osoft.gradient(startColorstr=3D&#39;#ff3c3c3c&#39;, endColorstr=3D&#39;#ff2=
22222&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0=
 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n=
=C2=A0 border-radius: 4px;\n}\n.navbar-inverse .navbar-nav &gt; .open &gt; =
a,\n.navbar-inverse .navbar-nav &gt; .active &gt; a {\n=C2=A0 background-im=
age: -webkit-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n=C2=A0 backgr=
ound-image: -o-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n=C2=A0 back=
ground-image: linear-gradient(to bottom, #080808 0%, #0f0f0f 100%);\n=C2=A0=
 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#f=
f080808&#39;, endColorstr=3D&#39;#ff0f0f0f&#39;, GradientType=3D0);\n=C2=A0=
 background-repeat: repeat-x;\n=C2=A0 -webkit-box-shadow: inset 0 3px 9px r=
gba(0, 0, 0, 0.25);\n=C2=A0 box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25)=
;\n}\n.navbar-inverse .navbar-brand,\n.navbar-inverse .navbar-nav &gt; li &=
gt; a {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);\n}\n.navbar-stat=
ic-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom {\n=C2=A0 border-radius: =
0;\n}\n@media (max-width: 767px) {\n=C2=A0 .navbar .navbar-nav .open .dropd=
own-menu &gt; .active &gt; a,\n=C2=A0 .navbar .navbar-nav .open .dropdown-m=
enu &gt; .active &gt; a:hover,\n=C2=A0 .navbar .navbar-nav .open .dropdown-=
menu &gt; .active &gt; a:focus {\n=C2=A0 =C2=A0 color: #fff;\n=C2=A0 =C2=A0=
 background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\=
n=C2=A0 =C2=A0 background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da=
4 100%);\n=C2=A0 =C2=A0 background-image: linear-gradient(to bottom, #337ab=
7 0%, #2e6da4 100%);\n=C2=A0 =C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2e6d=
a4&#39;, GradientType=3D0);\n=C2=A0 =C2=A0 background-repeat: repeat-x;\n=
=C2=A0 }\n}\n.alert {\n=C2=A0 text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2)=
;\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.25), 0 1p=
x 2px rgba(0, 0, 0, 0.05);\n=C2=A0 box-shadow: inset 0 1px 0 rgba(255, 255,=
 255, 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.alert-success {\n=C2=A0 ba=
ckground-image: -webkit-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);\n=
=C2=A0 background-image: -o-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);=
\n=C2=A0 background-image: linear-gradient(to bottom, #dff0d8 0%, #c8e5bc 1=
00%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColor=
str=3D&#39;#ffdff0d8&#39;, endColorstr=3D&#39;#ffc8e5bc&#39;, GradientType=
=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #b2dba1;\=
n}\n.alert-info {\n=C2=A0 background-image: -webkit-linear-gradient(top, #d=
9edf7 0%, #b9def0 100%);\n=C2=A0 background-image: -o-linear-gradient(top, =
#d9edf7 0%, #b9def0 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #d9edf7 0%, #b9def0 100%);\n=C2=A0 filter: progid:DXImageTransform.Mic=
rosoft.gradient(startColorstr=3D&#39;#ffd9edf7&#39;, endColorstr=3D&#39;#ff=
b9def0&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #9acfea;\n}\n.alert-warning {\n=C2=A0 background-image: -=
webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 background-i=
mage: -o-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 background=
-image: linear-gradient(to bottom, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 filte=
r: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#fffcf8e=
3&#39;, endColorstr=3D&#39;#fff8efc0&#39;, GradientType=3D0);\n=C2=A0 backg=
round-repeat: repeat-x;\n=C2=A0 border-color: #f5e79e;\n}\n.alert-danger {\=
n=C2=A0 background-image: -webkit-linear-gradient(top, #f2dede 0%, #e7c3c3 =
100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f2dede 0%, #e7c3c=
3 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f2dede 0%, #=
e7c3c3 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(st=
artColorstr=3D&#39;#fff2dede&#39;, endColorstr=3D&#39;#ffe7c3c3&#39;, Gradi=
entType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #d=
ca7a7;\n}\n.progress {\n=C2=A0 background-image: -webkit-linear-gradient(to=
p, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 background-image: linear-gradient(t=
o bottom, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 filter: progid:DXImageTransfor=
m.Microsoft.gradient(startColorstr=3D&#39;#ffebebeb&#39;, endColorstr=3D&#3=
9;#fff5f5f5&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=
}\n.progress-bar {\n=C2=A0 background-image: -webkit-linear-gradient(top, #=
337ab7 0%, #286090 100%);\n=C2=A0 background-image: -o-linear-gradient(top,=
 #337ab7 0%, #286090 100%);\n=C2=A0 background-image: linear-gradient(to bo=
ttom, #337ab7 0%, #286090 100%);\n=C2=A0 filter: progid:DXImageTransform.Mi=
crosoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#f=
f286090&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.=
progress-bar-success {\n=C2=A0 background-image: -webkit-linear-gradient(to=
p, #5cb85c 0%, #449d44 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #5cb85c 0%, #449d44 100%);\n=C2=A0 background-image: linear-gradient(t=
o bottom, #5cb85c 0%, #449d44 100%);\n=C2=A0 filter: progid:DXImageTransfor=
m.Microsoft.gradient(startColorstr=3D&#39;#ff5cb85c&#39;, endColorstr=3D&#3=
9;#ff449d44&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=
}\n.progress-bar-info {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 background-image: -o-linear-gradient=
(top, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 background-image: linear-gradient(=
to bottom, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 filter: progid:DXImageTransfo=
rm.Microsoft.gradient(startColorstr=3D&#39;#ff5bc0de&#39;, endColorstr=3D&#=
39;#ff31b0d5&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\=
n}\n.progress-bar-warning {\n=C2=A0 background-image: -webkit-linear-gradie=
nt(top, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 background-image: -o-linear-grad=
ient(top, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 background-image: linear-gradi=
ent(to bottom, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 filter: progid:DXImageTra=
nsform.Microsoft.gradient(startColorstr=3D&#39;#fff0ad4e&#39;, endColorstr=
=3D&#39;#ffec971f&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repea=
t-x;\n}\n.progress-bar-danger {\n=C2=A0 background-image: -webkit-linear-gr=
adient(top, #d9534f 0%, #c9302c 100%);\n=C2=A0 background-image: -o-linear-=
gradient(top, #d9534f 0%, #c9302c 100%);\n=C2=A0 background-image: linear-g=
radient(to bottom, #d9534f 0%, #c9302c 100%);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(startColorstr=3D&#39;#ffd9534f&#39;, endColor=
str=3D&#39;#ffc9302c&#39;, GradientType=3D0);\n=C2=A0 background-repeat: re=
peat-x;\n}\n.progress-bar-striped {\n=C2=A0 background-image: -webkit-linea=
r-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transpare=
nt 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, trans=
parent 75%, transparent);\n=C2=A0 background-image: -o-linear-gradient(45de=
g, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(25=
5, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, tra=
nsparent);\n=C2=A0 background-image: linear-gradient(45deg, rgba(255, 255, =
255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15)=
 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);\n}\n.li=
st-group {\n=C2=A0 border-radius: 4px;\n=C2=A0 -webkit-box-shadow: 0 1px 2p=
x rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);=
\n}\n.list-group-item.active,\n.list-group-item.active:hover,\n.list-group-=
item.active:focus {\n=C2=A0 text-shadow: 0 -1px 0 #286090;\n=C2=A0 backgrou=
nd-image: -webkit-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n=C2=A0 b=
ackground-image: -o-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n=C2=A0=
 background-image: linear-gradient(to bottom, #337ab7 0%, #2b669a 100%);\n=
=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&=
#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2b669a&#39;, GradientType=3D0);\n=
=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #2b669a;\n}\n.lis=
t-group-item.active .badge,\n.list-group-item.active:hover .badge,\n.list-g=
roup-item.active:focus .badge {\n=C2=A0 text-shadow: none;\n}\n.panel {\n=
=C2=A0 -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\n=C2=A0 box-shado=
w: 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.panel-default &gt; .panel-heading {\=
n=C2=A0 background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 =
100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e=
8 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f5f5f5 0%, #=
e8e8e8 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(st=
artColorstr=3D&#39;#fff5f5f5&#39;, endColorstr=3D&#39;#ffe8e8e8&#39;, Gradi=
entType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.panel-primary &gt; =
.panel-heading {\n=C2=A0 background-image: -webkit-linear-gradient(top, #33=
7ab7 0%, #2e6da4 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #=
337ab7 0%, #2e6da4 100%);\n=C2=A0 background-image: linear-gradient(to bott=
om, #337ab7 0%, #2e6da4 100%);\n=C2=A0 filter: progid:DXImageTransform.Micr=
osoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2=
e6da4&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.pa=
nel-success &gt; .panel-heading {\n=C2=A0 background-image: -webkit-linear-=
gradient(top, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 background-image: -o-linea=
r-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 background-image: linear=
-gradient(to bottom, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 filter: progid:DXIm=
ageTransform.Microsoft.gradient(startColorstr=3D&#39;#ffdff0d8&#39;, endCol=
orstr=3D&#39;#ffd0e9c6&#39;, GradientType=3D0);\n=C2=A0 background-repeat: =
repeat-x;\n}\n.panel-info &gt; .panel-heading {\n=C2=A0 background-image: -=
webkit-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 background-i=
mage: -o-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 background=
-image: linear-gradient(to bottom, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 filte=
r: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#ffd9edf=
7&#39;, endColorstr=3D&#39;#ffc4e3f3&#39;, GradientType=3D0);\n=C2=A0 backg=
round-repeat: repeat-x;\n}\n.panel-warning &gt; .panel-heading {\n=C2=A0 ba=
ckground-image: -webkit-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n=
=C2=A0 background-image: -o-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);=
\n=C2=A0 background-image: linear-gradient(to bottom, #fcf8e3 0%, #faf2cc 1=
00%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColor=
str=3D&#39;#fffcf8e3&#39;, endColorstr=3D&#39;#fffaf2cc&#39;, GradientType=
=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.panel-danger &gt; .panel-h=
eading {\n=C2=A0 background-image: -webkit-linear-gradient(top, #f2dede 0%,=
 #ebcccc 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f2dede 0=
%, #ebcccc 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f2d=
ede 0%, #ebcccc 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gr=
adient(startColorstr=3D&#39;#fff2dede&#39;, endColorstr=3D&#39;#ffebcccc&#3=
9;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.well {\n=
=C2=A0 background-image: -webkit-linear-gradient(top, #e8e8e8 0%, #f5f5f5 1=
00%);\n=C2=A0 background-image: -o-linear-gradient(top, #e8e8e8 0%, #f5f5f5=
 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #e8e8e8 0%, #f=
5f5f5 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(sta=
rtColorstr=3D&#39;#ffe8e8e8&#39;, endColorstr=3D&#39;#fff5f5f5&#39;, Gradie=
ntType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #dc=
dcdc;\n=C2=A0 -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1p=
x 0 rgba(255, 255, 255, 0.1);\n=C2=A0 box-shadow: inset 0 1px 3px rgba(0, 0=
, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n}\n/*# sourceMappingURL=3Dbo=
otstrap-theme.css.map */&quot;,&quot;// stylelint-disable selector-no-quali=
fying-type, selector-max-compound-selectors\n\n/*!\n * Bootstrap v3.4.1 (<a=
 href=3D"https://getbootstrap.com/" rel=3D"noreferrer noreferrer" target=3D=
"_blank">https://getbootstrap.com/</a>)\n * Copyright 2011-2019 Twitter, In=
c.\n * Licensed under MIT (<a href=3D"https://github.com/twbs/bootstrap/blo=
b/master/LICENSE" rel=3D"noreferrer noreferrer" target=3D"_blank">https://g=
ithub.com/twbs/bootstrap/blob/master/LICENSE</a>)\n */\n\n//\n// Load core =
variables and mixins\n// --------------------------------------------------=
\n\n@import \&quot;variables.less\&quot;;\n@import \&quot;mixins.less\&quot=
;;\n\n\n//\n// Buttons\n// ------------------------------------------------=
--\n\n// Common styles\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-i=
nfo,\n.btn-warning,\n.btn-danger {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0,=
 0, .2);\n=C2=A0 @shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px=
 rgba(0, 0, 0, .075);\n=C2=A0 .box-shadow(@shadow);\n\n=C2=A0 // Reset the =
shadow\n=C2=A0 &amp;:active,\n=C2=A0 &amp;.active {\n=C2=A0 =C2=A0 .box-sha=
dow(inset 0 3px 5px rgba(0, 0, 0, .125));\n=C2=A0 }\n\n=C2=A0 &amp;.disable=
d,\n=C2=A0 &amp;[disabled],\n=C2=A0 fieldset[disabled] &amp; {\n=C2=A0 =C2=
=A0 .box-shadow(none);\n=C2=A0 }\n\n=C2=A0 .badge {\n=C2=A0 =C2=A0 text-sha=
dow: none;\n=C2=A0 }\n}\n\n// Mixin for generating new styles\n.btn-styles(=
@btn-color: #555) {\n=C2=A0 #gradient &gt; .vertical(@start-color: @btn-col=
or; @end-color: darken(@btn-color, 12%));\n=C2=A0 .reset-filter(); // Disab=
le gradients for IE9 because filter bleeds through rounded corners; see <a =
href=3D"https://github.com/twbs/bootstrap/issues/10620%5Cn" rel=3D"noreferr=
er noreferrer" target=3D"_blank">https://github.com/twbs/bootstrap/issues/1=
0620\n</a>=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: darken(=
@btn-color, 14%);\n\n=C2=A0 &amp;:hover,\n=C2=A0 &amp;:focus=C2=A0 {\n=C2=
=A0 =C2=A0 background-color: darken(@btn-color, 12%);\n=C2=A0 =C2=A0 backgr=
ound-position: 0 -15px;\n=C2=A0 }\n\n=C2=A0 &amp;:active,\n=C2=A0 &amp;.act=
ive {\n=C2=A0 =C2=A0 background-color: darken(@btn-color, 12%);\n=C2=A0 =C2=
=A0 border-color: darken(@btn-color, 14%);\n=C2=A0 }\n\n=C2=A0 &amp;.disabl=
ed,\n=C2=A0 &amp;[disabled],\n=C2=A0 fieldset[disabled] &amp; {\n=C2=A0 =C2=
=A0 &amp;,\n=C2=A0 =C2=A0 &amp;:hover,\n=C2=A0 =C2=A0 &amp;:focus,\n=C2=A0 =
=C2=A0 &amp;.focus,\n=C2=A0 =C2=A0 &amp;:active,\n=C2=A0 =C2=A0 &amp;.activ=
e {\n=C2=A0 =C2=A0 =C2=A0 background-color: darken(@btn-color, 12%);\n=C2=
=A0 =C2=A0 =C2=A0 background-image: none;\n=C2=A0 =C2=A0 }\n=C2=A0 }\n}\n\n=
// Common styles\n.btn {\n=C2=A0 // Remove the gradient for the pressed/act=
ive state\n=C2=A0 &amp;:active,\n=C2=A0 &amp;.active {\n=C2=A0 =C2=A0 backg=
round-image: none;\n=C2=A0 }\n}\n\n// Apply the mixin to the buttons\n.btn-=
default {\n=C2=A0 .btn-styles(@btn-default-bg);\n=C2=A0 text-shadow: 0 1px =
0 #fff;\n=C2=A0 border-color: #ccc;\n}\n.btn-primary { .btn-styles(@btn-pri=
mary-bg); }\n.btn-success { .btn-styles(@btn-success-bg); }\n.btn-info=C2=
=A0 =C2=A0 { .btn-styles(@btn-info-bg); }\n.btn-warning { .btn-styles(@btn-=
warning-bg); }\n.btn-danger=C2=A0 { .btn-styles(@btn-danger-bg); }\n\n\n//\=
n// Images\n// --------------------------------------------------\n\n.thumb=
nail,\n.img-thumbnail {\n=C2=A0 .box-shadow(0 1px 2px rgba(0, 0, 0, .075));=
\n}\n\n\n//\n// Dropdowns\n// ---------------------------------------------=
-----\n\n.dropdown-menu &gt; li &gt; a:hover,\n.dropdown-menu &gt; li &gt; =
a:focus {\n=C2=A0 #gradient &gt; .vertical(@start-color: @dropdown-link-hov=
er-bg; @end-color: darken(@dropdown-link-hover-bg, 5%));\n=C2=A0 background=
-color: darken(@dropdown-link-hover-bg, 5%);\n}\n.dropdown-menu &gt; .activ=
e &gt; a,\n.dropdown-menu &gt; .active &gt; a:hover,\n.dropdown-menu &gt; .=
active &gt; a:focus {\n=C2=A0 #gradient &gt; .vertical(@start-color: @dropd=
own-link-active-bg; @end-color: darken(@dropdown-link-active-bg, 5%));\n=C2=
=A0 background-color: darken(@dropdown-link-active-bg, 5%);\n}\n\n\n//\n// =
Navbar\n// --------------------------------------------------\n\n// Default=
 navbar\n.navbar-default {\n=C2=A0 #gradient &gt; .vertical(@start-color: l=
ighten(@navbar-default-bg, 10%); @end-color: @navbar-default-bg);\n=C2=A0 .=
reset-filter(); // Remove gradient in IE&lt;10 to fix bug where dropdowns d=
on&#39;t get triggered\n=C2=A0 border-radius: @navbar-border-radius;\n=C2=
=A0 @shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 5px rgba(0, 0, 0=
, .075);\n=C2=A0 .box-shadow(@shadow);\n\n=C2=A0 .navbar-nav &gt; .open &gt=
; a,\n=C2=A0 .navbar-nav &gt; .active &gt; a {\n=C2=A0 =C2=A0 #gradient &gt=
; .vertical(@start-color: darken(@navbar-default-link-active-bg, 5%); @end-=
color: darken(@navbar-default-link-active-bg, 2%));\n=C2=A0 =C2=A0 .box-sha=
dow(inset 0 3px 9px rgba(0, 0, 0, .075));\n=C2=A0 }\n}\n.navbar-brand,\n.na=
vbar-nav &gt; li &gt; a {\n=C2=A0 text-shadow: 0 1px 0 rgba(255, 255, 255, =
.25);\n}\n\n// Inverted navbar\n.navbar-inverse {\n=C2=A0 #gradient &gt; .v=
ertical(@start-color: lighten(@navbar-inverse-bg, 10%); @end-color: @navbar=
-inverse-bg);\n=C2=A0 .reset-filter(); // Remove gradient in IE&lt;10 to fi=
x bug where dropdowns don&#39;t get triggered; see <a href=3D"https://githu=
b.com/twbs/bootstrap/issues/10257%5Cn" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://github.com/twbs/bootstrap/issues/10257\n</a>=C2=A0 bord=
er-radius: @navbar-border-radius;\n=C2=A0 .navbar-nav &gt; .open &gt; a,\n=
=C2=A0 .navbar-nav &gt; .active &gt; a {\n=C2=A0 =C2=A0 #gradient &gt; .ver=
tical(@start-color: @navbar-inverse-link-active-bg; @end-color: lighten(@na=
vbar-inverse-link-active-bg, 2.5%));\n=C2=A0 =C2=A0 .box-shadow(inset 0 3px=
 9px rgba(0, 0, 0, .25));\n=C2=A0 }\n\n=C2=A0 .navbar-brand,\n=C2=A0 .navba=
r-nav &gt; li &gt; a {\n=C2=A0 =C2=A0 text-shadow: 0 -1px 0 rgba(0, 0, 0, .=
25);\n=C2=A0 }\n}\n\n// Undo rounded corners in static and fixed navbars\n.=
navbar-static-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom {\n=C2=A0 bord=
er-radius: 0;\n}\n\n// Fix active state of dropdown items in collapsed mode=
\n@media (max-width: @grid-float-breakpoint-max) {\n=C2=A0 .navbar .navbar-=
nav .open .dropdown-menu &gt; .active &gt; a {\n=C2=A0 =C2=A0 &amp;,\n=C2=
=A0 =C2=A0 &amp;:hover,\n=C2=A0 =C2=A0 &amp;:focus {\n=C2=A0 =C2=A0 =C2=A0 =
color: #fff;\n=C2=A0 =C2=A0 =C2=A0 #gradient &gt; .vertical(@start-color: @=
dropdown-link-active-bg; @end-color: darken(@dropdown-link-active-bg, 5%));=
\n=C2=A0 =C2=A0 }\n=C2=A0 }\n}\n\n\n//\n// Alerts\n// ---------------------=
-----------------------------\n\n// Common styles\n.alert {\n=C2=A0 text-sh=
adow: 0 1px 0 rgba(255, 255, 255, .2);\n=C2=A0 @shadow: inset 0 1px 0 rgba(=
255, 255, 255, .25), 0 1px 2px rgba(0, 0, 0, .05);\n=C2=A0 .box-shadow(@sha=
dow);\n}\n\n// Mixin for generating new styles\n.alert-styles(@color) {\n=
=C2=A0 #gradient &gt; .vertical(@start-color: @color; @end-color: darken(@c=
olor, 7.5%));\n=C2=A0 border-color: darken(@color, 15%);\n}\n\n// Apply the=
 mixin to the alerts\n.alert-success=C2=A0 =C2=A0 { .alert-styles(@alert-su=
ccess-bg); }\n.alert-info=C2=A0 =C2=A0 =C2=A0 =C2=A0{ .alert-styles(@alert-=
info-bg); }\n.alert-warning=C2=A0 =C2=A0 { .alert-styles(@alert-warning-bg)=
; }\n.alert-danger=C2=A0 =C2=A0 =C2=A0{ .alert-styles(@alert-danger-bg); }\=
n\n\n//\n// Progress bars\n// ---------------------------------------------=
-----\n\n// Give the progress background some depth\n.progress {\n=C2=A0 #g=
radient &gt; .vertical(@start-color: darken(@progress-bg, 4%); @end-color: =
@progress-bg)\n}\n\n// Mixin for generating new styles\n.progress-bar-style=
s(@color) {\n=C2=A0 #gradient &gt; .vertical(@start-color: @color; @end-col=
or: darken(@color, 10%));\n}\n\n// Apply the mixin to the progress bars\n.p=
rogress-bar=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 { .progress-bar-styles=
(@progress-bar-bg); }\n.progress-bar-success=C2=A0 =C2=A0 { .progress-bar-s=
tyles(@progress-bar-success-bg); }\n.progress-bar-info=C2=A0 =C2=A0 =C2=A0 =
=C2=A0{ .progress-bar-styles(@progress-bar-info-bg); }\n.progress-bar-warni=
ng=C2=A0 =C2=A0 { .progress-bar-styles(@progress-bar-warning-bg); }\n.progr=
ess-bar-danger=C2=A0 =C2=A0 =C2=A0{ .progress-bar-styles(@progress-bar-dang=
er-bg); }\n\n// Reset the striped class because our mixins don&#39;t do mul=
tiple gradients and\n// the above custom styles override the new `.progress=
-bar-striped` in v3.2.0.\n.progress-bar-striped {\n=C2=A0 #gradient &gt; .s=
triped();\n}\n\n\n//\n// List groups\n// ----------------------------------=
----------------\n\n.list-group {\n=C2=A0 border-radius: @border-radius-bas=
e;\n=C2=A0 .box-shadow(0 1px 2px rgba(0, 0, 0, .075));\n}\n.list-group-item=
.active,\n.list-group-item.active:hover,\n.list-group-item.active:focus {\n=
=C2=A0 text-shadow: 0 -1px 0 darken(@list-group-active-bg, 10%);\n=C2=A0 #g=
radient &gt; .vertical(@start-color: @list-group-active-bg; @end-color: dar=
ken(@list-group-active-bg, 7.5%));\n=C2=A0 border-color: darken(@list-group=
-active-border, 7.5%);\n\n=C2=A0 .badge {\n=C2=A0 =C2=A0 text-shadow: none;=
\n=C2=A0 }\n}\n\n\n//\n// Panels\n// --------------------------------------=
------------\n\n// Common styles\n.panel {\n=C2=A0 .box-shadow(0 1px 2px rg=
ba(0, 0, 0, .05));\n}\n\n// Mixin for generating new styles\n.panel-heading=
-styles(@color) {\n=C2=A0 #gradient &gt; .vertical(@start-color: @color; @e=
nd-color: darken(@color, 5%));\n}\n\n// Apply the mixin to the panel headin=
gs only\n.panel-default &gt; .panel-heading=C2=A0 =C2=A0{ .panel-heading-st=
yles(@panel-default-heading-bg); }\n.panel-primary &gt; .panel-heading=C2=
=A0 =C2=A0{ .panel-heading-styles(@panel-primary-heading-bg); }\n.panel-suc=
cess &gt; .panel-heading=C2=A0 =C2=A0{ .panel-heading-styles(@panel-success=
-heading-bg); }\n.panel-info &gt; .panel-heading=C2=A0 =C2=A0 =C2=A0 { .pan=
el-heading-styles(@panel-info-heading-bg); }\n.panel-warning &gt; .panel-he=
ading=C2=A0 =C2=A0{ .panel-heading-styles(@panel-warning-heading-bg); }\n.p=
anel-danger &gt; .panel-heading=C2=A0 =C2=A0 { .panel-heading-styles(@panel=
-danger-heading-bg); }\n\n\n//\n// Wells\n// ------------------------------=
--------------------\n\n.well {\n=C2=A0 #gradient &gt; .vertical(@start-col=
or: darken(@well-bg, 5%); @end-color: @well-bg);\n=C2=A0 border-color: dark=
en(@well-bg, 10%);\n=C2=A0 @shadow: inset 0 1px 3px rgba(0, 0, 0, .05), 0 1=
px 0 rgba(255, 255, 255, .1);\n=C2=A0 .box-shadow(@shadow);\n}\n&quot;,&quo=
t;// stylelint-disable indentation, property-no-vendor-prefix, selector-no-=
vendor-prefix\n\n// Vendor Prefixes\n//\n// All vendor mixins are deprecate=
d as of v3.2.0 due to the introduction of\n// Autoprefixer in our Gruntfile=
. They have been removed in v4.\n\n// - Animations\n// - Backface visibilit=
y\n// - Box shadow\n// - Box sizing\n// - Content columns\n// - Hyphens\n//=
 - Placeholder text\n// - Transformations\n// - Transitions\n// - User Sele=
ct\n\n\n// Animations\n.animation(@animation) {\n=C2=A0 -webkit-animation: =
@animation;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-animation: @animation;\n=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 animation: @animation;\n}\n.animation-name(@nam=
e) {\n=C2=A0 -webkit-animation-name: @name;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 animation-name: @name;\n}\n.animation-duration(@duration) {\n=C2=A0 =
-webkit-animation-duration: @duration;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
animation-duration: @duration;\n}\n.animation-timing-function(@timing-funct=
ion) {\n=C2=A0 -webkit-animation-timing-function: @timing-function;\n=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 animation-timing-function: @timing-function;\n=
}\n.animation-delay(@delay) {\n=C2=A0 -webkit-animation-delay: @delay;\n=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 animation-delay: @delay;\n}\n.animation-ite=
ration-count(@iteration-count) {\n=C2=A0 -webkit-animation-iteration-count:=
 @iteration-count;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 animation-iteration-=
count: @iteration-count;\n}\n.animation-direction(@direction) {\n=C2=A0 -we=
bkit-animation-direction: @direction;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a=
nimation-direction: @direction;\n}\n.animation-fill-mode(@fill-mode) {\n=C2=
=A0 -webkit-animation-fill-mode: @fill-mode;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 animation-fill-mode: @fill-mode;\n}\n\n// Backface visibility\n// Pr=
event browsers from flickering when using CSS 3D transforms.\n// Default va=
lue is `visible`, but can be changed to `hidden`\n\n.backface-visibility(@v=
isibility) {\n=C2=A0 -webkit-backface-visibility: @visibility;\n=C2=A0 =C2=
=A0 =C2=A0-moz-backface-visibility: @visibility;\n=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 backface-visibility: @visibility;\n}\n\n// Drop shadows\n//\n// =
Note: Deprecated `.box-shadow()` as of v3.1.0 since all of Bootstrap&#39;s\=
n// supported browsers that have box shadow capabilities now support it.\n\=
n.box-shadow(@shadow) {\n=C2=A0 -webkit-box-shadow: @shadow; // iOS &lt;4.3=
 &amp; Android &lt;4.1\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 box-shadow: @sha=
dow;\n}\n\n// Box sizing\n.box-sizing(@boxmodel) {\n=C2=A0 -webkit-box-sizi=
ng: @boxmodel;\n=C2=A0 =C2=A0 =C2=A0-moz-box-sizing: @boxmodel;\n=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 box-sizing: @boxmodel;\n}\n\n// CSS3 Content Colum=
ns\n.content-columns(@column-count; @column-gap: @grid-gutter-width) {\n=C2=
=A0 -webkit-column-count: @column-count;\n=C2=A0 =C2=A0 =C2=A0-moz-column-c=
ount: @column-count;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 column-count: @col=
umn-count;\n=C2=A0 -webkit-column-gap: @column-gap;\n=C2=A0 =C2=A0 =C2=A0-m=
oz-column-gap: @column-gap;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 column-gap:=
 @column-gap;\n}\n\n// Optional hyphenation\n.hyphens(@mode: auto) {\n=C2=
=A0 -webkit-hyphens: @mode;\n=C2=A0 =C2=A0 =C2=A0-moz-hyphens: @mode;\n=C2=
=A0 =C2=A0 =C2=A0 -ms-hyphens: @mode; // IE10+\n=C2=A0 =C2=A0 =C2=A0 =C2=A0=
-o-hyphens: @mode;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hyphens: @mode;\n=C2=
=A0 word-wrap: break-word;\n}\n\n// Placeholder text\n.placeholder(@color: =
@input-color-placeholder) {\n=C2=A0 // Firefox\n=C2=A0 &amp;::-moz-placehol=
der {\n=C2=A0 =C2=A0 color: @color;\n=C2=A0 =C2=A0 opacity: 1; // Override =
Firefox&#39;s unusual default opacity; see <a href=3D"https://github.com/tw=
bs/bootstrap/pull/11526%5Cn" rel=3D"noreferrer noreferrer" target=3D"_blank=
">https://github.com/twbs/bootstrap/pull/11526\n</a>=C2=A0 }\n=C2=A0 &amp;:=
-ms-input-placeholder { color: @color; } // Internet Explorer 10+\n=C2=A0 &=
amp;::-webkit-input-placeholder=C2=A0 { color: @color; } // Safari and Chro=
me\n}\n\n// Transformations\n.scale(@ratio) {\n=C2=A0 -webkit-transform: sc=
ale(@ratio);\n=C2=A0 =C2=A0 =C2=A0 -ms-transform: scale(@ratio); // IE9 onl=
y\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transform: scale(@ratio);\n=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 transform: scale(@ratio);\n}\n.scale(@ratioX; @ratioY)=
 {\n=C2=A0 -webkit-transform: scale(@ratioX, @ratioY);\n=C2=A0 =C2=A0 =C2=
=A0 -ms-transform: scale(@ratioX, @ratioY); // IE9 only\n=C2=A0 =C2=A0 =C2=
=A0 =C2=A0-o-transform: scale(@ratioX, @ratioY);\n=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 transform: scale(@ratioX, @ratioY);\n}\n.scaleX(@ratio) {\n=C2=
=A0 -webkit-transform: scaleX(@ratio);\n=C2=A0 =C2=A0 =C2=A0 -ms-transform:=
 scaleX(@ratio); // IE9 only\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transform: scal=
eX(@ratio);\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transform: scaleX(@ratio);\=
n}\n.scaleY(@ratio) {\n=C2=A0 -webkit-transform: scaleY(@ratio);\n=C2=A0 =
=C2=A0 =C2=A0 -ms-transform: scaleY(@ratio); // IE9 only\n=C2=A0 =C2=A0 =C2=
=A0 =C2=A0-o-transform: scaleY(@ratio);\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 transform: scaleY(@ratio);\n}\n.skew(@x; @y) {\n=C2=A0 -webkit-transform: =
skewX(@x) skewY(@y);\n=C2=A0 =C2=A0 =C2=A0 -ms-transform: skewX(@x) skewY(@=
y); // See <a href=3D"https://github.com/twbs/bootstrap/issues/4885" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://github.com/twbs/bootstrap=
/issues/4885</a>; IE9+\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transform: skewX(@x) =
skewY(@y);\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transform: skewX(@x) skewY(@=
y);\n}\n.translate(@x; @y) {\n=C2=A0 -webkit-transform: translate(@x, @y);\=
n=C2=A0 =C2=A0 =C2=A0 -ms-transform: translate(@x, @y); // IE9 only\n=C2=A0=
 =C2=A0 =C2=A0 =C2=A0-o-transform: translate(@x, @y);\n=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 transform: translate(@x, @y);\n}\n.translate3d(@x; @y; @z) {=
\n=C2=A0 -webkit-transform: translate3d(@x, @y, @z);\n=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 transform: translate3d(@x, @y, @z);\n}\n.rotate(@degrees) {\n=
=C2=A0 -webkit-transform: rotate(@degrees);\n=C2=A0 =C2=A0 =C2=A0 -ms-trans=
form: rotate(@degrees); // IE9 only\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transfor=
m: rotate(@degrees);\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transform: rotate(=
@degrees);\n}\n.rotateX(@degrees) {\n=C2=A0 -webkit-transform: rotateX(@deg=
rees);\n=C2=A0 =C2=A0 =C2=A0 -ms-transform: rotateX(@degrees); // IE9 only\=
n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transform: rotateX(@degrees);\n=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 transform: rotateX(@degrees);\n}\n.rotateY(@degrees) =
{\n=C2=A0 -webkit-transform: rotateY(@degrees);\n=C2=A0 =C2=A0 =C2=A0 -ms-t=
ransform: rotateY(@degrees); // IE9 only\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-tra=
nsform: rotateY(@degrees);\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transform: r=
otateY(@degrees);\n}\n.perspective(@perspective) {\n=C2=A0 -webkit-perspect=
ive: @perspective;\n=C2=A0 =C2=A0 =C2=A0-moz-perspective: @perspective;\n=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 perspective: @perspective;\n}\n.perspect=
ive-origin(@perspective) {\n=C2=A0 -webkit-perspective-origin: @perspective=
;\n=C2=A0 =C2=A0 =C2=A0-moz-perspective-origin: @perspective;\n=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 perspective-origin: @perspective;\n}\n.transform-o=
rigin(@origin) {\n=C2=A0 -webkit-transform-origin: @origin;\n=C2=A0 =C2=A0 =
=C2=A0-moz-transform-origin: @origin;\n=C2=A0 =C2=A0 =C2=A0 -ms-transform-o=
rigin: @origin; // IE9 only\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transform-o=
rigin: @origin;\n}\n\n\n// Transitions\n\n.transition(@transition) {\n=C2=
=A0 -webkit-transition: @transition;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transit=
ion: @transition;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transition: @transiti=
on;\n}\n.transition-property(@transition-property) {\n=C2=A0 -webkit-transi=
tion-property: @transition-property;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr=
ansition-property: @transition-property;\n}\n.transition-delay(@transition-=
delay) {\n=C2=A0 -webkit-transition-delay: @transition-delay;\n=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 transition-delay: @transition-delay;\n}\n.transiti=
on-duration(@transition-duration) {\n=C2=A0 -webkit-transition-duration: @t=
ransition-duration;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transition-duration=
: @transition-duration;\n}\n.transition-timing-function(@timing-function) {=
\n=C2=A0 -webkit-transition-timing-function: @timing-function;\n=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 transition-timing-function: @timing-function;\n}\n=
.transition-transform(@transition) {\n=C2=A0 -webkit-transition: -webkit-tr=
ansform @transition;\n=C2=A0 =C2=A0 =C2=A0-moz-transition: -moz-transform @=
transition;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0-o-transition: -o-transform @transi=
tion;\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 transition: transform @transition=
;\n}\n\n\n// User select\n// For selecting text on the page\n\n.user-select=
(@select) {\n=C2=A0 -webkit-user-select: @select;\n=C2=A0 =C2=A0 =C2=A0-moz=
-user-select: @select;\n=C2=A0 =C2=A0 =C2=A0 -ms-user-select: @select; // I=
E10+\n=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 user-select: @select;\n}\n&quot;,&=
quot;// stylelint-disable value-no-vendor-prefix, selector-max-id\n\n#gradi=
ent {\n\n=C2=A0 // Horizontal gradient, from left to right\n=C2=A0 //\n=C2=
=A0 // Creates two color stops, start and end, by specifying a color and po=
sition for each color stop.\n=C2=A0 // Color stops are not available in IE9=
 and below.\n=C2=A0 .horizontal(@start-color: #555; @end-color: #333; @star=
t-percent: 0%; @end-percent: 100%) {\n=C2=A0 =C2=A0 background-image: -webk=
it-linear-gradient(left, @start-color @start-percent, @end-color @end-perce=
nt); // Safari 5.1-6, Chrome 10+\n=C2=A0 =C2=A0 background-image: -o-linear=
-gradient(left, @start-color @start-percent, @end-color @end-percent); // O=
pera 12\n=C2=A0 =C2=A0 background-image: linear-gradient(to right, @start-c=
olor @start-percent, @end-color @end-percent); // Standard, IE10, Firefox 1=
6+, Opera 12.10+, Safari 7+, Chrome 26+\n=C2=A0 =C2=A0 filter: e(%(\&quot;p=
rogid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;%d&#39;, end=
Colorstr=3D&#39;%d&#39;, GradientType=3D1)\&quot;, argb(@start-color), argb=
(@end-color))); // IE9 and down\n=C2=A0 =C2=A0 background-repeat: repeat-x;=
\n=C2=A0 }\n\n=C2=A0 // Vertical gradient, from top to bottom\n=C2=A0 //\n=
=C2=A0 // Creates two color stops, start and end, by specifying a color and=
 position for each color stop.\n=C2=A0 // Color stops are not available in =
IE9 and below.\n=C2=A0 .vertical(@start-color: #555; @end-color: #333; @sta=
rt-percent: 0%; @end-percent: 100%) {\n=C2=A0 =C2=A0 background-image: -web=
kit-linear-gradient(top, @start-color @start-percent, @end-color @end-perce=
nt);=C2=A0 // Safari 5.1-6, Chrome 10+\n=C2=A0 =C2=A0 background-image: -o-=
linear-gradient(top, @start-color @start-percent, @end-color @end-percent);=
=C2=A0 // Opera 12\n=C2=A0 =C2=A0 background-image: linear-gradient(to bott=
om, @start-color @start-percent, @end-color @end-percent); // Standard, IE1=
0, Firefox 16+, Opera 12.10+, Safari 7+, Chrome 26+\n=C2=A0 =C2=A0 filter: =
e(%(\&quot;progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;=
%d&#39;, endColorstr=3D&#39;%d&#39;, GradientType=3D0)\&quot;, argb(@start-=
color), argb(@end-color))); // IE9 and down\n=C2=A0 =C2=A0 background-repea=
t: repeat-x;\n=C2=A0 }\n\n=C2=A0 .directional(@start-color: #555; @end-colo=
r: #333; @deg: 45deg) {\n=C2=A0 =C2=A0 background-image: -webkit-linear-gra=
dient(@deg, @start-color, @end-color); // Safari 5.1-6, Chrome 10+\n=C2=A0 =
=C2=A0 background-image: -o-linear-gradient(@deg, @start-color, @end-color)=
; // Opera 12\n=C2=A0 =C2=A0 background-image: linear-gradient(@deg, @start=
-color, @end-color); // Standard, IE10, Firefox 16+, Opera 12.10+, Safari 7=
+, Chrome 26+\n=C2=A0 =C2=A0 background-repeat: repeat-x;\n=C2=A0 }\n=C2=A0=
 .horizontal-three-colors(@start-color: #00b3ee; @mid-color: #7a43b6; @colo=
r-stop: 50%; @end-color: #c3325f) {\n=C2=A0 =C2=A0 background-image: -webki=
t-linear-gradient(left, @start-color, @mid-color @color-stop, @end-color);\=
n=C2=A0 =C2=A0 background-image: -o-linear-gradient(left, @start-color, @mi=
d-color @color-stop, @end-color);\n=C2=A0 =C2=A0 background-image: linear-g=
radient(to right, @start-color, @mid-color @color-stop, @end-color);\n=C2=
=A0 =C2=A0 filter: e(%(\&quot;progid:DXImageTransform.Microsoft.gradient(st=
artColorstr=3D&#39;%d&#39;, endColorstr=3D&#39;%d&#39;, GradientType=3D1)\&=
quot;, argb(@start-color), argb(@end-color))); // IE9 and down, gets no col=
or-stop at all for proper fallback\n=C2=A0 =C2=A0 background-repeat: no-rep=
eat;\n=C2=A0 }\n=C2=A0 .vertical-three-colors(@start-color: #00b3ee; @mid-c=
olor: #7a43b6; @color-stop: 50%; @end-color: #c3325f) {\n=C2=A0 =C2=A0 back=
ground-image: -webkit-linear-gradient(@start-color, @mid-color @color-stop,=
 @end-color);\n=C2=A0 =C2=A0 background-image: -o-linear-gradient(@start-co=
lor, @mid-color @color-stop, @end-color);\n=C2=A0 =C2=A0 background-image: =
linear-gradient(@start-color, @mid-color @color-stop, @end-color);\n=C2=A0 =
=C2=A0 filter: e(%(\&quot;progid:DXImageTransform.Microsoft.gradient(startC=
olorstr=3D&#39;%d&#39;, endColorstr=3D&#39;%d&#39;, GradientType=3D0)\&quot=
;, argb(@start-color), argb(@end-color))); // IE9 and down, gets no color-s=
top at all for proper fallback\n=C2=A0 =C2=A0 background-repeat: no-repeat;=
\n=C2=A0 }\n=C2=A0 .radial(@inner-color: #555; @outer-color: #333) {\n=C2=
=A0 =C2=A0 background-image: -webkit-radial-gradient(circle, @inner-color, =
@outer-color);\n=C2=A0 =C2=A0 background-image: radial-gradient(circle, @in=
ner-color, @outer-color);\n=C2=A0 =C2=A0 background-repeat: no-repeat;\n=C2=
=A0 }\n=C2=A0 .striped(@color: rgba(255, 255, 255, .15); @angle: 45deg) {\n=
=C2=A0 =C2=A0 background-image: -webkit-linear-gradient(@angle, @color 25%,=
 transparent 25%, transparent 50%, @color 50%, @color 75%, transparent 75%,=
 transparent);\n=C2=A0 =C2=A0 background-image: -o-linear-gradient(@angle, =
@color 25%, transparent 25%, transparent 50%, @color 50%, @color 75%, trans=
parent 75%, transparent);\n=C2=A0 =C2=A0 background-image: linear-gradient(=
@angle, @color 25%, transparent 25%, transparent 50%, @color 50%, @color 75=
%, transparent 75%, transparent);\n=C2=A0 }\n}\n&quot;,&quot;// Reset filte=
rs for IE\n//\n// When you need to remove a gradient background, do not for=
get to use this to reset\n// the IE filter for IE9 and below.\n\n.reset-fil=
ter() {\n=C2=A0 filter: e(%(\&quot;progid:DXImageTransform.Microsoft.gradie=
nt(enabled =3D false)\&quot;));\n}\n&quot;]}<br>
\ No newline at end of file<br>
+{&quot;version&quot;:3,&quot;sources&quot;:[&quot;bootstrap-theme.css&quot=
;,&quot;less/theme.less&quot;,&quot;less/mixins/vendor-prefixes.less&quot;,=
&quot;less/mixins/gradients.less&quot;,&quot;less/mixins/reset-filter.less&=
quot;],&quot;names&quot;:[],&quot;mappings&quot;:&quot;AAAA;;;;GAIG;ACiBH;;=
;;;;EAME,yCAAA;EC2CA,4FAAA;EACQ,oFAAA;CFzDT;ACkBC;;;;;;;;;;;;ECsCA,yDAAA;EA=
CQ,iDAAA;CF1CT;ACQC;;;;;;;;;;;;;;;;;;ECiCA,yBAAA;EACQ,iBAAA;CFrBT;AC7BD;;;;=
;;EAuBI,kBAAA;CDcH;AC2BC;;EAEE,uBAAA;CDzBH;AC8BD;EEvEI,sEAAA;EACA,iEAAA;EAC=
A,2FAAA;EAAA,oEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,sBAAA;EAyCA,0BAA=
A;EACA,mBAAA;CDtBD;AClBC;;EAEE,0BAAA;EACA,6BAAA;CDoBH;ACjBC;;EAEE,0BAAA;EAC=
A,sBAAA;CDmBH;ACbG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2BL;ACPD;EE5EI,=
yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;E=
ACA,sBAAA;CD4DD;AC1DC;;EAEE,0BAAA;EACA,6BAAA;CD4DH;ACzDC;;EAEE,0BAAA;EACA,s=
BAAA;CD2DH;ACrDG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmEL;AC9CD;EE7EI,y=
EAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EA=
CA,sBAAA;CDoGD;AClGC;;EAEE,0BAAA;EACA,6BAAA;CDoGH;ACjGC;;EAEE,0BAAA;EACA,sB=
AAA;CDmGH;AC7FG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2GL;ACrFD;EE9EI,yE=
AAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EAC=
A,sBAAA;CD4ID;AC1IC;;EAEE,0BAAA;EACA,6BAAA;CD4IH;ACzIC;;EAEE,0BAAA;EACA,sBA=
AA;CD2IH;ACrIG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmJL;AC5HD;EE/EI,yEA=
AA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA=
,sBAAA;CDoLD;AClLC;;EAEE,0BAAA;EACA,6BAAA;CDoLH;ACjLC;;EAEE,0BAAA;EACA,sBAA=
A;CDmLH;AC7KG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CD2LL;ACnKD;EEhFI,yEAA=
A;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EClBF,oEAAA;EH8CA,4BAAA;EACA,=
sBAAA;CD4ND;AC1NC;;EAEE,0BAAA;EACA,6BAAA;CD4NH;ACzNC;;EAEE,0BAAA;EACA,sBAAA=
;CD2NH;ACrNG;;;;;;;;;;;;;;;;;;EAME,0BAAA;EACA,uBAAA;CDmOL;ACpMD;;ECtCE,mDAA=
A;EACQ,2CAAA;CF8OT;AC/LD;;EEjGI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA=
,uHAAA;EACA,4BAAA;EFgGF,0BAAA;CDqMD;ACnMD;;;EEtGI,yEAAA;EACA,oEAAA;EACA,8FA=
AA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFsGF,0BAAA;CDyMD;AChMD;EEnHI,yEAAA;EAC=
A,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ECnBF,oEAAA;EHqIA,mBAAA=
;ECrEA,4FAAA;EACQ,oFAAA;CF4QT;AC3MD;;EEnHI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA=
,uEAAA;EACA,uHAAA;EACA,4BAAA;ED6CF,yDAAA;EACQ,iDAAA;CFsRT;ACxMD;;EAEE,+CAAA=
;CD0MD;ACtMD;EEtII,sEAAA;EACA,iEAAA;EACA,2FAAA;EAAA,oEAAA;EACA,uHAAA;EACA,4=
BAAA;ECnBF,oEAAA;EHwJA,mBAAA;CD4MD;AC/MD;;EEtII,yEAAA;EACA,oEAAA;EACA,8FAAA=
;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;ED6CF,wDAAA;EACQ,gDAAA;CF6ST;ACzND;;EAYI,=
0CAAA;CDiNH;AC5MD;;;EAGE,iBAAA;CD8MD;AC1MD;EAEI;;;IAGE,YAAA;IEnKF,yEAAA;IAC=
A,oEAAA;IACA,8FAAA;IAAA,uEAAA;IACA,uHAAA;IACA,4BAAA;GH+WD;CACF;ACrMD;EACE,8=
CAAA;EC/HA,2FAAA;EACQ,mFAAA;CFuUT;AC7LD;EE5LI,yEAAA;EACA,oEAAA;EACA,8FAAA;E=
AAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDyMD;ACpMD;EE7LI,yEAAA;EACA,oE=
AAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA;CDiND;AC3MD;EE9=
LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;EFoLF,sBAAA=
;CDyND;AClND;EE/LI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4=
BAAA;EFoLF,sBAAA;CDiOD;AClND;EEvMI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;E=
ACA,uHAAA;EACA,4BAAA;CH4ZH;AC/MD;EEjNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEA=
AA;EACA,uHAAA;EACA,4BAAA;CHmaH;ACrND;EElNI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA=
,uEAAA;EACA,uHAAA;EACA,4BAAA;CH0aH;AC3ND;EEnNI,yEAAA;EACA,oEAAA;EACA,8FAAA;=
EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHibH;ACjOD;EEpNI,yEAAA;EACA,oEAAA;EACA,8F=
AAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CHwbH;ACvOD;EErNI,yEAAA;EACA,oEAAA;EAC=
A,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;CH+bH;AC1OD;EExLI,8MAAA;EACA,yMAAA=
;EACA,sMAAA;CHqaH;ACtOD;EACE,mBAAA;EClLA,mDAAA;EACQ,2CAAA;CF2ZT;ACvOD;;;EAG=
E,8BAAA;EEzOE,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA;=
EFuOF,sBAAA;CD6OD;AClPD;;;EAQI,kBAAA;CD+OH;ACrOD;ECvME,kDAAA;EACQ,0CAAA;CF+=
aT;AC/ND;EElQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4BAAA=
;CHoeH;ACrOD;EEnQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EACA,4=
BAAA;CH2eH;AC3OD;EEpQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAAA;EA=
CA,4BAAA;CHkfH;ACjPD;EErQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,uHAA=
A;EACA,4BAAA;CHyfH;ACvPD;EEtQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;EACA,=
uHAAA;EACA,4BAAA;CHggBH;AC7PD;EEvQI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,uEAAA;=
EACA,uHAAA;EACA,4BAAA;CHugBH;AC7PD;EE9QI,yEAAA;EACA,oEAAA;EACA,8FAAA;EAAA,u=
EAAA;EACA,uHAAA;EACA,4BAAA;EF4QF,sBAAA;EC/NA,0FAAA;EACQ,kFAAA;CFmeT&quot;,&=
quot;file&quot;:&quot;bootstrap-theme.css&quot;,&quot;sourcesContent&quot;:=
[&quot;/*!\n * Bootstrap v3.4.1 (<a href=3D"https://getbootstrap.com/" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://getbootstrap.com/</a>)=
\n * Copyright 2011-2019 Twitter, Inc.\n * Licensed under MIT (<a href=3D"h=
ttps://github.com/twbs/bootstrap/blob/master/LICENSE" rel=3D"noreferrer nor=
eferrer" target=3D"_blank">https://github.com/twbs/bootstrap/blob/master/LI=
CENSE</a>)\n */\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-info,\n.=
btn-warning,\n.btn-danger {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2=
);\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1=
px 1px rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: inset 0 1px 0 rgba(255, 25=
5, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075);\n}\n.btn-default:active,\n.b=
tn-primary:active,\n.btn-success:active,\n.btn-info:active,\n.btn-warning:a=
ctive,\n.btn-danger:active,\n.btn-default.active,\n.btn-primary.active,\n.b=
tn-success.active,\n.btn-info.active,\n.btn-warning.active,\n.btn-danger.ac=
tive {\n=C2=A0 -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n=
=C2=A0 box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);\n}\n.btn-default.d=
isabled,\n.btn-primary.disabled,\n.btn-success.disabled,\n.btn-info.disable=
d,\n.btn-warning.disabled,\n.btn-danger.disabled,\n.btn-default[disabled],\=
n.btn-primary[disabled],\n.btn-success[disabled],\n.btn-info[disabled],\n.b=
tn-warning[disabled],\n.btn-danger[disabled],\nfieldset[disabled] .btn-defa=
ult,\nfieldset[disabled] .btn-primary,\nfieldset[disabled] .btn-success,\nf=
ieldset[disabled] .btn-info,\nfieldset[disabled] .btn-warning,\nfieldset[di=
sabled] .btn-danger {\n=C2=A0 -webkit-box-shadow: none;\n=C2=A0 box-shadow:=
 none;\n}\n.btn-default .badge,\n.btn-primary .badge,\n.btn-success .badge,=
\n.btn-info .badge,\n.btn-warning .badge,\n.btn-danger .badge {\n=C2=A0 tex=
t-shadow: none;\n}\n.btn:active,\n.btn.active {\n=C2=A0 background-image: n=
one;\n}\n.btn-default {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #fff 0%, #e0e0e0 100%);\n=C2=A0 background-image: -o-linear-gradient(to=
p, #fff 0%, #e0e0e0 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #fff 0%, #e0e0e0 100%);\n=C2=A0 filter: progid:DXImageTransform.Micros=
oft.gradient(startColorstr=3D&#39;#ffffffff&#39;, endColorstr=3D&#39;#ffe0e=
0e0&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Micros=
oft.gradient(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #dbdbdb;\n=C2=A0 text-shadow: 0 1px 0 #fff;\n=C2=A0 borde=
r-color: #ccc;\n}\n.btn-default:hover,\n.btn-default:focus {\n=C2=A0 backgr=
ound-color: #e0e0e0;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-default=
:active,\n.btn-default.active {\n=C2=A0 background-color: #e0e0e0;\n=C2=A0 =
border-color: #dbdbdb;\n}\n.btn-default.disabled,\n.btn-default[disabled],\=
nfieldset[disabled] .btn-default,\n.btn-default.disabled:hover,\n.btn-defau=
lt[disabled]:hover,\nfieldset[disabled] .btn-default:hover,\n.btn-default.d=
isabled:focus,\n.btn-default[disabled]:focus,\nfieldset[disabled] .btn-defa=
ult:focus,\n.btn-default.disabled.focus,\n.btn-default[disabled].focus,\nfi=
eldset[disabled] .btn-default.focus,\n.btn-default.disabled:active,\n.btn-d=
efault[disabled]:active,\nfieldset[disabled] .btn-default:active,\n.btn-def=
ault.disabled.active,\n.btn-default[disabled].active,\nfieldset[disabled] .=
btn-default.active {\n=C2=A0 background-color: #e0e0e0;\n=C2=A0 background-=
image: none;\n}\n.btn-primary {\n=C2=A0 background-image: -webkit-linear-gr=
adient(top, #337ab7 0%, #265a88 100%);\n=C2=A0 background-image: -o-linear-=
gradient(top, #337ab7 0%, #265a88 100%);\n=C2=A0 background-image: linear-g=
radient(to bottom, #337ab7 0%, #265a88 100%);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColor=
str=3D&#39;#ff265a88&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(enabled =3D false);\n=C2=A0 background-repeat=
: repeat-x;\n=C2=A0 border-color: #245580;\n}\n.btn-primary:hover,\n.btn-pr=
imary:focus {\n=C2=A0 background-color: #265a88;\n=C2=A0 background-positio=
n: 0 -15px;\n}\n.btn-primary:active,\n.btn-primary.active {\n=C2=A0 backgro=
und-color: #265a88;\n=C2=A0 border-color: #245580;\n}\n.btn-primary.disable=
d,\n.btn-primary[disabled],\nfieldset[disabled] .btn-primary,\n.btn-primary=
.disabled:hover,\n.btn-primary[disabled]:hover,\nfieldset[disabled] .btn-pr=
imary:hover,\n.btn-primary.disabled:focus,\n.btn-primary[disabled]:focus,\n=
fieldset[disabled] .btn-primary:focus,\n.btn-primary.disabled.focus,\n.btn-=
primary[disabled].focus,\nfieldset[disabled] .btn-primary.focus,\n.btn-prim=
ary.disabled:active,\n.btn-primary[disabled]:active,\nfieldset[disabled] .b=
tn-primary:active,\n.btn-primary.disabled.active,\n.btn-primary[disabled].a=
ctive,\nfieldset[disabled] .btn-primary.active {\n=C2=A0 background-color: =
#265a88;\n=C2=A0 background-image: none;\n}\n.btn-success {\n=C2=A0 backgro=
und-image: -webkit-linear-gradient(top, #5cb85c 0%, #419641 100%);\n=C2=A0 =
background-image: -o-linear-gradient(top, #5cb85c 0%, #419641 100%);\n=C2=
=A0 background-image: linear-gradient(to bottom, #5cb85c 0%, #419641 100%);=
\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=
=3D&#39;#ff5cb85c&#39;, endColorstr=3D&#39;#ff419641&#39;, GradientType=3D0=
);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D f=
alse);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #3e8f3e;\=
n}\n.btn-success:hover,\n.btn-success:focus {\n=C2=A0 background-color: #41=
9641;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-success:active,\n.btn-=
success.active {\n=C2=A0 background-color: #419641;\n=C2=A0 border-color: #=
3e8f3e;\n}\n.btn-success.disabled,\n.btn-success[disabled],\nfieldset[disab=
led] .btn-success,\n.btn-success.disabled:hover,\n.btn-success[disabled]:ho=
ver,\nfieldset[disabled] .btn-success:hover,\n.btn-success.disabled:focus,\=
n.btn-success[disabled]:focus,\nfieldset[disabled] .btn-success:focus,\n.bt=
n-success.disabled.focus,\n.btn-success[disabled].focus,\nfieldset[disabled=
] .btn-success.focus,\n.btn-success.disabled:active,\n.btn-success[disabled=
]:active,\nfieldset[disabled] .btn-success:active,\n.btn-success.disabled.a=
ctive,\n.btn-success[disabled].active,\nfieldset[disabled] .btn-success.act=
ive {\n=C2=A0 background-color: #419641;\n=C2=A0 background-image: none;\n}=
\n.btn-info {\n=C2=A0 background-image: -webkit-linear-gradient(top, #5bc0d=
e 0%, #2aabd2 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #5bc=
0de 0%, #2aabd2 100%);\n=C2=A0 background-image: linear-gradient(to bottom,=
 #5bc0de 0%, #2aabd2 100%);\n=C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(startColorstr=3D&#39;#ff5bc0de&#39;, endColorstr=3D&#39;#ff2aab=
d2&#39;, GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #28a4c9;\n}\n.btn-info:hover,\n.btn-info:focus {\n=C2=A0 =
background-color: #2aabd2;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-i=
nfo:active,\n.btn-info.active {\n=C2=A0 background-color: #2aabd2;\n=C2=A0 =
border-color: #28a4c9;\n}\n.btn-info.disabled,\n.btn-info[disabled],\nfield=
set[disabled] .btn-info,\n.btn-info.disabled:hover,\n.btn-info[disabled]:ho=
ver,\nfieldset[disabled] .btn-info:hover,\n.btn-info.disabled:focus,\n.btn-=
info[disabled]:focus,\nfieldset[disabled] .btn-info:focus,\n.btn-info.disab=
led.focus,\n.btn-info[disabled].focus,\nfieldset[disabled] .btn-info.focus,=
\n.btn-info.disabled:active,\n.btn-info[disabled]:active,\nfieldset[disable=
d] .btn-info:active,\n.btn-info.disabled.active,\n.btn-info[disabled].activ=
e,\nfieldset[disabled] .btn-info.active {\n=C2=A0 background-color: #2aabd2=
;\n=C2=A0 background-image: none;\n}\n.btn-warning {\n=C2=A0 background-ima=
ge: -webkit-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 backgro=
und-image: -o-linear-gradient(top, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 backg=
round-image: linear-gradient(to bottom, #f0ad4e 0%, #eb9316 100%);\n=C2=A0 =
filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#ff=
f0ad4e&#39;, endColorstr=3D&#39;#ffeb9316&#39;, GradientType=3D0);\n=C2=A0 =
filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n=C2=
=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #e38d13;\n}\n.btn-wa=
rning:hover,\n.btn-warning:focus {\n=C2=A0 background-color: #eb9316;\n=C2=
=A0 background-position: 0 -15px;\n}\n.btn-warning:active,\n.btn-warning.ac=
tive {\n=C2=A0 background-color: #eb9316;\n=C2=A0 border-color: #e38d13;\n}=
\n.btn-warning.disabled,\n.btn-warning[disabled],\nfieldset[disabled] .btn-=
warning,\n.btn-warning.disabled:hover,\n.btn-warning[disabled]:hover,\nfiel=
dset[disabled] .btn-warning:hover,\n.btn-warning.disabled:focus,\n.btn-warn=
ing[disabled]:focus,\nfieldset[disabled] .btn-warning:focus,\n.btn-warning.=
disabled.focus,\n.btn-warning[disabled].focus,\nfieldset[disabled] .btn-war=
ning.focus,\n.btn-warning.disabled:active,\n.btn-warning[disabled]:active,\=
nfieldset[disabled] .btn-warning:active,\n.btn-warning.disabled.active,\n.b=
tn-warning[disabled].active,\nfieldset[disabled] .btn-warning.active {\n=C2=
=A0 background-color: #eb9316;\n=C2=A0 background-image: none;\n}\n.btn-dan=
ger {\n=C2=A0 background-image: -webkit-linear-gradient(top, #d9534f 0%, #c=
12e2a 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #d9534f 0%, =
#c12e2a 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #d9534f=
 0%, #c12e2a 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradi=
ent(startColorstr=3D&#39;#ffd9534f&#39;, endColorstr=3D&#39;#ffc12e2a&#39;,=
 GradientType=3D0);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradi=
ent(enabled =3D false);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border=
-color: #b92c28;\n}\n.btn-danger:hover,\n.btn-danger:focus {\n=C2=A0 backgr=
ound-color: #c12e2a;\n=C2=A0 background-position: 0 -15px;\n}\n.btn-danger:=
active,\n.btn-danger.active {\n=C2=A0 background-color: #c12e2a;\n=C2=A0 bo=
rder-color: #b92c28;\n}\n.btn-danger.disabled,\n.btn-danger[disabled],\nfie=
ldset[disabled] .btn-danger,\n.btn-danger.disabled:hover,\n.btn-danger[disa=
bled]:hover,\nfieldset[disabled] .btn-danger:hover,\n.btn-danger.disabled:f=
ocus,\n.btn-danger[disabled]:focus,\nfieldset[disabled] .btn-danger:focus,\=
n.btn-danger.disabled.focus,\n.btn-danger[disabled].focus,\nfieldset[disabl=
ed] .btn-danger.focus,\n.btn-danger.disabled:active,\n.btn-danger[disabled]=
:active,\nfieldset[disabled] .btn-danger:active,\n.btn-danger.disabled.acti=
ve,\n.btn-danger[disabled].active,\nfieldset[disabled] .btn-danger.active {=
\n=C2=A0 background-color: #c12e2a;\n=C2=A0 background-image: none;\n}\n.th=
umbnail,\n.img-thumbnail {\n=C2=A0 -webkit-box-shadow: 0 1px 2px rgba(0, 0,=
 0, 0.075);\n=C2=A0 box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);\n}\n.dropdo=
wn-menu &gt; li &gt; a:hover,\n.dropdown-menu &gt; li &gt; a:focus {\n=C2=
=A0 background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 100%=
);\n=C2=A0 background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e8 10=
0%);\n=C2=A0 background-image: linear-gradient(to bottom, #f5f5f5 0%, #e8e8=
e8 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startC=
olorstr=3D&#39;#fff5f5f5&#39;, endColorstr=3D&#39;#ffe8e8e8&#39;, GradientT=
ype=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 background-color: #e=
8e8e8;\n}\n.dropdown-menu &gt; .active &gt; a,\n.dropdown-menu &gt; .active=
 &gt; a:hover,\n.dropdown-menu &gt; .active &gt; a:focus {\n=C2=A0 backgrou=
nd-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n=C2=A0 b=
ackground-image: -o-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\n=C2=A0=
 background-image: linear-gradient(to bottom, #337ab7 0%, #2e6da4 100%);\n=
=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&=
#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2e6da4&#39;, GradientType=3D0);\n=
=C2=A0 background-repeat: repeat-x;\n=C2=A0 background-color: #2e6da4;\n}\n=
.navbar-default {\n=C2=A0 background-image: -webkit-linear-gradient(top, #f=
fffff 0%, #f8f8f8 100%);\n=C2=A0 background-image: -o-linear-gradient(top, =
#ffffff 0%, #f8f8f8 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #ffffff 0%, #f8f8f8 100%);\n=C2=A0 filter: progid:DXImageTransform.Mic=
rosoft.gradient(startColorstr=3D&#39;#ffffffff&#39;, endColorstr=3D&#39;#ff=
f8f8f8&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\=
n=C2=A0 border-radius: 4px;\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(=
255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: i=
nset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 5px rgba(0, 0, 0, 0.075);\n}\=
n.navbar-default .navbar-nav &gt; .open &gt; a,\n.navbar-default .navbar-na=
v &gt; .active &gt; a {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 background-image: -o-linear-gradient=
(top, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 background-image: linear-gradient(=
to bottom, #dbdbdb 0%, #e2e2e2 100%);\n=C2=A0 filter: progid:DXImageTransfo=
rm.Microsoft.gradient(startColorstr=3D&#39;#ffdbdbdb&#39;, endColorstr=3D&#=
39;#ffe2e2e2&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\=
n=C2=A0 -webkit-box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n=C2=A0 b=
ox-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.075);\n}\n.navbar-brand,\n.navba=
r-nav &gt; li &gt; a {\n=C2=A0 text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2=
5);\n}\n.navbar-inverse {\n=C2=A0 background-image: -webkit-linear-gradient=
(top, #3c3c3c 0%, #222 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #3c3c3c 0%, #222 100%);\n=C2=A0 background-image: linear-gradient(to b=
ottom, #3c3c3c 0%, #222 100%);\n=C2=A0 filter: progid:DXImageTransform.Micr=
osoft.gradient(startColorstr=3D&#39;#ff3c3c3c&#39;, endColorstr=3D&#39;#ff2=
22222&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0=
 filter: progid:DXImageTransform.Microsoft.gradient(enabled =3D false);\n=
=C2=A0 border-radius: 4px;\n}\n.navbar-inverse .navbar-nav &gt; .open &gt; =
a,\n.navbar-inverse .navbar-nav &gt; .active &gt; a {\n=C2=A0 background-im=
age: -webkit-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n=C2=A0 backgr=
ound-image: -o-linear-gradient(top, #080808 0%, #0f0f0f 100%);\n=C2=A0 back=
ground-image: linear-gradient(to bottom, #080808 0%, #0f0f0f 100%);\n=C2=A0=
 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#f=
f080808&#39;, endColorstr=3D&#39;#ff0f0f0f&#39;, GradientType=3D0);\n=C2=A0=
 background-repeat: repeat-x;\n=C2=A0 -webkit-box-shadow: inset 0 3px 9px r=
gba(0, 0, 0, 0.25);\n=C2=A0 box-shadow: inset 0 3px 9px rgba(0, 0, 0, 0.25)=
;\n}\n.navbar-inverse .navbar-brand,\n.navbar-inverse .navbar-nav &gt; li &=
gt; a {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);\n}\n.navbar-stat=
ic-top,\n.navbar-fixed-top,\n.navbar-fixed-bottom {\n=C2=A0 border-radius: =
0;\n}\n@media (max-width: 767px) {\n=C2=A0 .navbar .navbar-nav .open .dropd=
own-menu &gt; .active &gt; a,\n=C2=A0 .navbar .navbar-nav .open .dropdown-m=
enu &gt; .active &gt; a:hover,\n=C2=A0 .navbar .navbar-nav .open .dropdown-=
menu &gt; .active &gt; a:focus {\n=C2=A0 =C2=A0 color: #fff;\n=C2=A0 =C2=A0=
 background-image: -webkit-linear-gradient(top, #337ab7 0%, #2e6da4 100%);\=
n=C2=A0 =C2=A0 background-image: -o-linear-gradient(top, #337ab7 0%, #2e6da=
4 100%);\n=C2=A0 =C2=A0 background-image: linear-gradient(to bottom, #337ab=
7 0%, #2e6da4 100%);\n=C2=A0 =C2=A0 filter: progid:DXImageTransform.Microso=
ft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2e6d=
a4&#39;, GradientType=3D0);\n=C2=A0 =C2=A0 background-repeat: repeat-x;\n=
=C2=A0 }\n}\n.alert {\n=C2=A0 text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2)=
;\n=C2=A0 -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.25), 0 1p=
x 2px rgba(0, 0, 0, 0.05);\n=C2=A0 box-shadow: inset 0 1px 0 rgba(255, 255,=
 255, 0.25), 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.alert-success {\n=C2=A0 ba=
ckground-image: -webkit-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);\n=
=C2=A0 background-image: -o-linear-gradient(top, #dff0d8 0%, #c8e5bc 100%);=
\n=C2=A0 background-image: linear-gradient(to bottom, #dff0d8 0%, #c8e5bc 1=
00%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColor=
str=3D&#39;#ffdff0d8&#39;, endColorstr=3D&#39;#ffc8e5bc&#39;, GradientType=
=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #b2dba1;\=
n}\n.alert-info {\n=C2=A0 background-image: -webkit-linear-gradient(top, #d=
9edf7 0%, #b9def0 100%);\n=C2=A0 background-image: -o-linear-gradient(top, =
#d9edf7 0%, #b9def0 100%);\n=C2=A0 background-image: linear-gradient(to bot=
tom, #d9edf7 0%, #b9def0 100%);\n=C2=A0 filter: progid:DXImageTransform.Mic=
rosoft.gradient(startColorstr=3D&#39;#ffd9edf7&#39;, endColorstr=3D&#39;#ff=
b9def0&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=
=A0 border-color: #9acfea;\n}\n.alert-warning {\n=C2=A0 background-image: -=
webkit-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 background-i=
mage: -o-linear-gradient(top, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 background=
-image: linear-gradient(to bottom, #fcf8e3 0%, #f8efc0 100%);\n=C2=A0 filte=
r: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#fffcf8e=
3&#39;, endColorstr=3D&#39;#fff8efc0&#39;, GradientType=3D0);\n=C2=A0 backg=
round-repeat: repeat-x;\n=C2=A0 border-color: #f5e79e;\n}\n.alert-danger {\=
n=C2=A0 background-image: -webkit-linear-gradient(top, #f2dede 0%, #e7c3c3 =
100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f2dede 0%, #e7c3c=
3 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f2dede 0%, #=
e7c3c3 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(st=
artColorstr=3D&#39;#fff2dede&#39;, endColorstr=3D&#39;#ffe7c3c3&#39;, Gradi=
entType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #d=
ca7a7;\n}\n.progress {\n=C2=A0 background-image: -webkit-linear-gradient(to=
p, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 background-image: linear-gradient(t=
o bottom, #ebebeb 0%, #f5f5f5 100%);\n=C2=A0 filter: progid:DXImageTransfor=
m.Microsoft.gradient(startColorstr=3D&#39;#ffebebeb&#39;, endColorstr=3D&#3=
9;#fff5f5f5&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=
}\n.progress-bar {\n=C2=A0 background-image: -webkit-linear-gradient(top, #=
337ab7 0%, #286090 100%);\n=C2=A0 background-image: -o-linear-gradient(top,=
 #337ab7 0%, #286090 100%);\n=C2=A0 background-image: linear-gradient(to bo=
ttom, #337ab7 0%, #286090 100%);\n=C2=A0 filter: progid:DXImageTransform.Mi=
crosoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#f=
f286090&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.=
progress-bar-success {\n=C2=A0 background-image: -webkit-linear-gradient(to=
p, #5cb85c 0%, #449d44 100%);\n=C2=A0 background-image: -o-linear-gradient(=
top, #5cb85c 0%, #449d44 100%);\n=C2=A0 background-image: linear-gradient(t=
o bottom, #5cb85c 0%, #449d44 100%);\n=C2=A0 filter: progid:DXImageTransfor=
m.Microsoft.gradient(startColorstr=3D&#39;#ff5cb85c&#39;, endColorstr=3D&#3=
9;#ff449d44&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=
}\n.progress-bar-info {\n=C2=A0 background-image: -webkit-linear-gradient(t=
op, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 background-image: -o-linear-gradient=
(top, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 background-image: linear-gradient(=
to bottom, #5bc0de 0%, #31b0d5 100%);\n=C2=A0 filter: progid:DXImageTransfo=
rm.Microsoft.gradient(startColorstr=3D&#39;#ff5bc0de&#39;, endColorstr=3D&#=
39;#ff31b0d5&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\=
n}\n.progress-bar-warning {\n=C2=A0 background-image: -webkit-linear-gradie=
nt(top, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 background-image: -o-linear-grad=
ient(top, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 background-image: linear-gradi=
ent(to bottom, #f0ad4e 0%, #ec971f 100%);\n=C2=A0 filter: progid:DXImageTra=
nsform.Microsoft.gradient(startColorstr=3D&#39;#fff0ad4e&#39;, endColorstr=
=3D&#39;#ffec971f&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repea=
t-x;\n}\n.progress-bar-danger {\n=C2=A0 background-image: -webkit-linear-gr=
adient(top, #d9534f 0%, #c9302c 100%);\n=C2=A0 background-image: -o-linear-=
gradient(top, #d9534f 0%, #c9302c 100%);\n=C2=A0 background-image: linear-g=
radient(to bottom, #d9534f 0%, #c9302c 100%);\n=C2=A0 filter: progid:DXImag=
eTransform.Microsoft.gradient(startColorstr=3D&#39;#ffd9534f&#39;, endColor=
str=3D&#39;#ffc9302c&#39;, GradientType=3D0);\n=C2=A0 background-repeat: re=
peat-x;\n}\n.progress-bar-striped {\n=C2=A0 background-image: -webkit-linea=
r-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transpare=
nt 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, trans=
parent 75%, transparent);\n=C2=A0 background-image: -o-linear-gradient(45de=
g, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(25=
5, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, tra=
nsparent);\n=C2=A0 background-image: linear-gradient(45deg, rgba(255, 255, =
255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15)=
 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);\n}\n.li=
st-group {\n=C2=A0 border-radius: 4px;\n=C2=A0 -webkit-box-shadow: 0 1px 2p=
x rgba(0, 0, 0, 0.075);\n=C2=A0 box-shadow: 0 1px 2px rgba(0, 0, 0, 0.075);=
\n}\n.list-group-item.active,\n.list-group-item.active:hover,\n.list-group-=
item.active:focus {\n=C2=A0 text-shadow: 0 -1px 0 #286090;\n=C2=A0 backgrou=
nd-image: -webkit-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n=C2=A0 b=
ackground-image: -o-linear-gradient(top, #337ab7 0%, #2b669a 100%);\n=C2=A0=
 background-image: linear-gradient(to bottom, #337ab7 0%, #2b669a 100%);\n=
=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&=
#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2b669a&#39;, GradientType=3D0);\n=
=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #2b669a;\n}\n.lis=
t-group-item.active .badge,\n.list-group-item.active:hover .badge,\n.list-g=
roup-item.active:focus .badge {\n=C2=A0 text-shadow: none;\n}\n.panel {\n=
=C2=A0 -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);\n=C2=A0 box-shado=
w: 0 1px 2px rgba(0, 0, 0, 0.05);\n}\n.panel-default &gt; .panel-heading {\=
n=C2=A0 background-image: -webkit-linear-gradient(top, #f5f5f5 0%, #e8e8e8 =
100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f5f5f5 0%, #e8e8e=
8 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f5f5f5 0%, #=
e8e8e8 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(st=
artColorstr=3D&#39;#fff5f5f5&#39;, endColorstr=3D&#39;#ffe8e8e8&#39;, Gradi=
entType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.panel-primary &gt; =
.panel-heading {\n=C2=A0 background-image: -webkit-linear-gradient(top, #33=
7ab7 0%, #2e6da4 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #=
337ab7 0%, #2e6da4 100%);\n=C2=A0 background-image: linear-gradient(to bott=
om, #337ab7 0%, #2e6da4 100%);\n=C2=A0 filter: progid:DXImageTransform.Micr=
osoft.gradient(startColorstr=3D&#39;#ff337ab7&#39;, endColorstr=3D&#39;#ff2=
e6da4&#39;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.pa=
nel-success &gt; .panel-heading {\n=C2=A0 background-image: -webkit-linear-=
gradient(top, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 background-image: -o-linea=
r-gradient(top, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 background-image: linear=
-gradient(to bottom, #dff0d8 0%, #d0e9c6 100%);\n=C2=A0 filter: progid:DXIm=
ageTransform.Microsoft.gradient(startColorstr=3D&#39;#ffdff0d8&#39;, endCol=
orstr=3D&#39;#ffd0e9c6&#39;, GradientType=3D0);\n=C2=A0 background-repeat: =
repeat-x;\n}\n.panel-info &gt; .panel-heading {\n=C2=A0 background-image: -=
webkit-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 background-i=
mage: -o-linear-gradient(top, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 background=
-image: linear-gradient(to bottom, #d9edf7 0%, #c4e3f3 100%);\n=C2=A0 filte=
r: progid:DXImageTransform.Microsoft.gradient(startColorstr=3D&#39;#ffd9edf=
7&#39;, endColorstr=3D&#39;#ffc4e3f3&#39;, GradientType=3D0);\n=C2=A0 backg=
round-repeat: repeat-x;\n}\n.panel-warning &gt; .panel-heading {\n=C2=A0 ba=
ckground-image: -webkit-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);\n=
=C2=A0 background-image: -o-linear-gradient(top, #fcf8e3 0%, #faf2cc 100%);=
\n=C2=A0 background-image: linear-gradient(to bottom, #fcf8e3 0%, #faf2cc 1=
00%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(startColor=
str=3D&#39;#fffcf8e3&#39;, endColorstr=3D&#39;#fffaf2cc&#39;, GradientType=
=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.panel-danger &gt; .panel-h=
eading {\n=C2=A0 background-image: -webkit-linear-gradient(top, #f2dede 0%,=
 #ebcccc 100%);\n=C2=A0 background-image: -o-linear-gradient(top, #f2dede 0=
%, #ebcccc 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #f2d=
ede 0%, #ebcccc 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gr=
adient(startColorstr=3D&#39;#fff2dede&#39;, endColorstr=3D&#39;#ffebcccc&#3=
9;, GradientType=3D0);\n=C2=A0 background-repeat: repeat-x;\n}\n.well {\n=
=C2=A0 background-image: -webkit-linear-gradient(top, #e8e8e8 0%, #f5f5f5 1=
00%);\n=C2=A0 background-image: -o-linear-gradient(top, #e8e8e8 0%, #f5f5f5=
 100%);\n=C2=A0 background-image: linear-gradient(to bottom, #e8e8e8 0%, #f=
5f5f5 100%);\n=C2=A0 filter: progid:DXImageTransform.Microsoft.gradient(sta=
rtColorstr=3D&#39;#ffe8e8e8&#39;, endColorstr=3D&#39;#fff5f5f5&#39;, Gradie=
ntType=3D0);\n=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: #dc=
dcdc;\n=C2=A0 -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05), 0 1p=
x 0 rgba(255, 255, 255, 0.1);\n=C2=A0 box-shadow: inset 0 1px 3px rgba(0, 0=
, 0, 0.05), 0 1px 0 rgba(255, 255, 255, 0.1);\n}\n/*# sourceMappingURL=3Dbo=
otstrap-theme.css.map */&quot;,&quot;// stylelint-disable selector-no-quali=
fying-type, selector-max-compound-selectors\n\n/*!\n * Bootstrap v3.4.1 (<a=
 href=3D"https://getbootstrap.com/" rel=3D"noreferrer noreferrer" target=3D=
"_blank">https://getbootstrap.com/</a>)\n * Copyright 2011-2019 Twitter, In=
c.\n * Licensed under MIT (<a href=3D"https://github.com/twbs/bootstrap/blo=
b/master/LICENSE" rel=3D"noreferrer noreferrer" target=3D"_blank">https://g=
ithub.com/twbs/bootstrap/blob/master/LICENSE</a>)\n */\n\n//\n// Load core =
variables and mixins\n// --------------------------------------------------=
\n\n@import \&quot;variables.less\&quot;;\n@import \&quot;mixins.less\&quot=
;;\n\n\n//\n// Buttons\n// ------------------------------------------------=
--\n\n// Common styles\n.btn-default,\n.btn-primary,\n.btn-success,\n.btn-i=
nfo,\n.btn-warning,\n.btn-danger {\n=C2=A0 text-shadow: 0 -1px 0 rgba(0, 0,=
 0, .2);\n=C2=A0 @shadow: inset 0 1px 0 rgba(255, 255, 255, .15), 0 1px 1px=
 rgba(0, 0, 0, .075);\n=C2=A0 .box-shadow(@shadow);\n\n=C2=A0 // Reset the =
shadow\n=C2=A0 &amp;:active,\n=C2=A0 &amp;.active {\n=C2=A0 =C2=A0 .box-sha=
dow(inset 0 3px 5px rgba(0, 0, 0, .125));\n=C2=A0 }\n\n=C2=A0 &amp;.disable=
d,\n=C2=A0 &amp;[disabled],\n=C2=A0 fieldset[disabled] &amp; {\n=C2=A0 =C2=
=A0 .box-shadow(none);\n=C2=A0 }\n\n=C2=A0 .badge {\n=C2=A0 =C2=A0 text-sha=
dow: none;\n=C2=A0 }\n}\n\n// Mixin for generating new styles\n.btn-styles(=
@btn-color: #555) {\n=C2=A0 #gradient &gt; .vertical(@start-color: @btn-col=
or; @end-color: darken(@btn-color, 12%));\n=C2=A0 .reset-filter(); // Disab=
le gradients for IE9 because filter bleeds through rounded corners; see <a =
href=3D"https://github.com/twbs/bootstrap/issues/10620%5Cn" rel=3D"noreferr=
er noreferrer" target=3D"_blank">https://github.com/twbs/bootstrap/issues/1=
0620\n</a>=C2=A0 background-repeat: repeat-x;\n=C2=A0 border-color: darken(=
@btn-color, 14%);\n\n=C2=A0 &amp;:hover,\n=C2=A0 &amp;:focus=C2=A0 {\n=C2=
=A0 =C2=A0 background-color: darken(@btn-color, 12%);\n=C2=A0 =C2=A0 backgr=
ound-position: 0 -15px;\n=C2=A0 }\n\n=C2=A0 &amp;:active,\n=C2=A0 &amp;.act=
ive {\n=C2=A0 =C2=A0 background-color: darken(@btn-color, 12%);\n=C2=A0 =C2=
=A0 border-color: darken(@btn-color, 14%);\n=C2=A0 }\n\n=C2=A0 &amp;.disabl=
ed,\n=C2=A0 &amp;[disabled],\n=C2=A0 fieldset[disabled] &amp; {\n=C2=A0 =C2=
=A0 &amp;,\n=C2=A0 =C2=A0 &amp;:hover,\n=C2=A0 =C2=A0 &amp;:focus,\n=C2=A0 =
=C2=A0 &amp;.focus,\n=C2=A0 =C2=A0 </blockquote></div>

--00000000000023734e05ba587e01--
