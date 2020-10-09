Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com [209.85.210.65])
 by mx.groups.io with SMTP id smtpd.web11.8821.1602231324544999030
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 01:15:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=J25QJ//j;
 spf=pass (domain: konsulko.com, ip: 209.85.210.65, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f65.google.com with SMTP id i12so8269353ota.5
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 01:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=LkfNx1xQPxYPViiwUmBFsizlqDhhzKu65dh+uTWF64U=;
        b=J25QJ//jNgLGcref87YVU5rJ33r9wH+T7xLtieAqPe3CdvFkiiy2LTpBO1vn7yF/1V
         XhARU3P3uWNM8apgbvyLhhYvanoH6AW3isKCZLkJ/T5Q3pKg6aro5kePxpGe0aoqCL8k
         HH1KLHLxqCG7z5m7p7S/ArAT3I2OWYEm/RHa0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=LkfNx1xQPxYPViiwUmBFsizlqDhhzKu65dh+uTWF64U=;
        b=FdE0/oSTHqF3l5NUu/8DStTDF5DFknmrqj97rmlZ2HRAZ3Ot7WtSQX9TTT3I8tXb7+
         LMdKCpewomdqgIVJAQiAt6gQ2EP+gf2KoiHs1LvcJ7wMbxKr8BPvd69vZINYVQfPH/lp
         Umr7Ru0vSbQcKNcpEwHuam6d5PxcsOa4z2KhZ6bto8RfXkU7T6sJu0YINRkyJH9K9hRD
         UIg8r3tC61FM2XfqInHpFYAkSUpl/ZUAm5KiRCa0DcdYu17fR6/k0KETEo9MgS1CcRMi
         t15X3cNCVq2EQvdp2G81Vx9i9tcXGIeMTMIvSbQkTKC5bwuLFjfPXBa94Ezaavp1+RhM
         9ETQ==
X-Gm-Message-State: AOAM532yK4GAw47QtrKezsM6ETCrRcSo5bYrwUQhAlccNRWPVi/IfUgA
	vtfimJQ8LoWMchKeE/H7N05+llKvmy2egCQLHiJBjA==
X-Google-Smtp-Source: ABdhPJz9PPqDVHjCieSgOjtHPSnSV9i0OHrqumGEkYwSm4egwfnzUp7HyZ+Zj7JjA6c5Hg60fSfWu5CeFgzk+IfUEYM=
X-Received: by 2002:a9d:a24:: with SMTP id 33mr7191132otg.305.1602231323365;
 Fri, 09 Oct 2020 01:15:23 -0700 (PDT)
MIME-Version: 1.0
References: <20201009040315.10133-1-idadelm@gmail.com>
In-Reply-To: <20201009040315.10133-1-idadelm@gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 9 Oct 2020 09:15:12 +0100
Message-ID: <CAM9ZRVugfx1UtHQha+KG8vb2FYnUZEWfv1fJtOazGuBzZfdVaQ@mail.gmail.com>
Subject: Re: [yocto] [layerindex-web][PATCH] Add SPDX license headers to layerindex-web source files
To: Meh Mbeh Ida Delphine <idadelm@gmail.com>
Cc: yocto@lists.yoctoproject.org, paul.eggleton@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 9 Oct 2020 at 05:04, Meh Mbeh Ida Delphine <idadelm@gmail.com> wrot=
e:
>
> Added SPDX identifiers to all .py files except those in migrations direc=
tory.
>
> Fixes: [YOCTO #13527]
>
> Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
> ---
>  __init__.py                               | 1 +
>  docker/settings.py                        | 2 ++
>  dockersetup.py                            | 2 ++
>  layerindex/__init__.py                    | 5 +++++
>  layerindex/admin.py                       | 2 ++
>  layerindex/auth_forms.py                  | 2 ++
>  layerindex/auth_views.py                  | 2 ++
>  layerindex/bulkchange.py                  | 2 ++
>  layerindex/context_processors.py          | 2 ++
>  layerindex/forms.py                       | 2 ++
>  layerindex/layerconfparse.py              | 1 +
>  layerindex/middleware.py                  | 2 ++
>  layerindex/models.py                      | 2 ++
>  layerindex/querysethelper.py              | 8 ++++++++
>  layerindex/recipedesc.py                  | 2 ++
>  layerindex/recipeparse.py                 | 2 ++
>  layerindex/restperm.py                    | 6 ++++++
>  layerindex/restviews.py                   | 2 ++
>  layerindex/securityquestions.py           | 8 ++++++++
>  layerindex/tasks.py                       | 2 ++
>  layerindex/templatetags/__init__.py       | 5 +++++
>  layerindex/templatetags/extrafilters.py   | 6 ++++++
>  layerindex/tools/fedora-fetch.py          | 2 ++
>  layerindex/tools/fixup_duplicates.py      | 2 ++
>  layerindex/tools/github-fetch.py          | 2 ++
>  layerindex/tools/import_classic.py        | 2 ++
>  layerindex/tools/import_classic_wiki.py   | 2 ++
>  layerindex/tools/import_layer.py          | 2 ++
>  layerindex/tools/import_layers.py         | 2 ++
>  layerindex/tools/import_otherdistro.py    | 2 ++
>  layerindex/tools/import_project.py        | 2 ++
>  layerindex/tools/import_wiki_layers.py    | 2 ++
>  layerindex/tools/site_name.py             | 2 ++
>  layerindex/tools/update_classic_status.py | 2 ++
>  layerindex/tools/webapi-test.py           | 2 ++
>  layerindex/update.py                      | 2 ++
>  layerindex/update_layer.py                | 2 ++
>  layerindex/urls.py                        | 2 ++
>  layerindex/urls_branch.py                 | 2 ++
>  layerindex/utils.py                       | 2 ++
>  layerindex/views.py                       | 2 ++
>  manage.py                                 | 2 ++
>  password_validation.py                    | 5 +++++
>  pytest.ini                                | 5 +++++
>  rrs/__init__.py                           | 5 +++++
>  rrs/admin.py                              | 2 ++
>  rrs/apps.py                               | 6 ++++++
>  rrs/context_processors.py                 | 2 ++
>  rrs/models.py                             | 2 ++
>  rrs/tools/common.py                       | 2 ++
>  rrs/tools/dump_upgrades.py                | 2 ++
>  rrs/tools/historytool.py                  | 2 ++
>  rrs/tools/rrs_distros.py                  | 2 ++
>  rrs/tools/rrs_maintainer_history.py       | 2 ++
>  rrs/tools/rrs_upgrade_history.py          | 2 ++
>  rrs/tools/rrs_upstream_email.py           | 2 ++
>  rrs/tools/rrs_upstream_history.py         | 2 ++
>  rrs/tools/upgrade_history_internal.py     | 2 ++
>  rrs/urls.py                               | 8 ++++++++
>  rrs/views.py                              | 8 ++++++++
>  rrs/wsgi.py                               | 6 ++++++
>  settings.py                               | 2 ++
>  tests/test_update.py                      | 2 ++
>  urls.py                                   | 2 ++
>  wsgi.py                                   | 5 +++++
>  65 files changed, 186 insertions(+)
>
> diff --git a/__init__.py b/__init__.py
> index e69de29..d589fc3 100644
> --- a/__init__.py
> +++ b/__init__.py
> @@ -0,0 +1 @@
> +# SPDX-License-Identifier: MIT
> \ No newline at end of file
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
> index e69de29..83d0f2f 100644
> --- a/layerindex/__init__.py
> +++ b/layerindex/__init__.py
> @@ -0,0 +1,5 @@
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> \ No newline at end of file

It looks like your editor is not adding a final newline in some of
these files. Most editors should have a setting to ensure a final
newline is included in each file, if you can't find this you can also
manually add a final newline where needed.

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
> diff --git a/layerindex/context_processors.py b/layerindex/context_proce=
ssors.py
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
>  from layerindex.models import Branch, LayerItem, LayerMaintainer, YPCom=
patibleVersion, LayerNote, LayerBranch, LayerDependency, Recipe, Machine, D=
istro, BBClass, Source, Patch, PackageConfig, StaticBuildDep, DynamicBuildD=
ep, RecipeFileDependency, BBAppend, IncFile
>  from rest_framework import viewsets, serializers, pagination
> diff --git a/layerindex/securityquestions.py b/layerindex/securityquesti=
ons.py
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
>                         "What was the last name of your third grade teac=
her?",
>                         "What is your favorite pizza topping?",
> diff --git a/layerindex/tasks.py b/layerindex/tasks.py
> index ae62b91..da85539 100644
> --- a/layerindex/tasks.py
> +++ b/layerindex/tasks.py
> @@ -4,6 +4,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from celery import Celery
>  from django.core.mail import EmailMessage
> diff --git a/layerindex/templatetags/__init__.py b/layerindex/templateta=
gs/__init__.py
> index e69de29..c88e412 100644
> --- a/layerindex/templatetags/__init__.py
> +++ b/layerindex/templatetags/__init__.py
> @@ -0,0 +1,5 @@
> +# Copyright (C) 2017, 2018 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> \ No newline at end of file
> diff --git a/layerindex/templatetags/extrafilters.py b/layerindex/templa=
tetags/extrafilters.py
> index d79f9a1..2a9e764 100644
> --- a/layerindex/templatetags/extrafilters.py
> +++ b/layerindex/templatetags/extrafilters.py
> @@ -1,3 +1,9 @@
> +# Copyright (C) 2017, 2018 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  from django import template
>  from .. import utils
>
> diff --git a/layerindex/tools/fedora-fetch.py b/layerindex/tools/fedora-=
fetch.py
> index 492082a..a16fc80 100755
> --- a/layerindex/tools/fedora-fetch.py
> +++ b/layerindex/tools/fedora-fetch.py
> @@ -5,6 +5,8 @@
>  # Copyright (C) 2017, 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/tools/fixup_duplicates.py b/layerindex/tools/fix=
up_duplicates.py
> index 5abe2c2..6c60959 100644
> --- a/layerindex/tools/fixup_duplicates.py
> +++ b/layerindex/tools/fixup_duplicates.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/github-fetch.py b/layerindex/tools/github-=
fetch.py
> index 11c977a..0dbe509 100755
> --- a/layerindex/tools/github-fetch.py
> +++ b/layerindex/tools/github-fetch.py
> @@ -5,6 +5,8 @@
>  # Copyright (C) 2017 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/tools/import_classic.py b/layerindex/tools/impor=
t_classic.py
> index fca054c..0216221 100755
> --- a/layerindex/tools/import_classic.py
> +++ b/layerindex/tools/import_classic.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/import_classic_wiki.py b/layerindex/tools/=
import_classic_wiki.py
> index bfebcd9..aa33b7a 100755
> --- a/layerindex/tools/import_classic_wiki.py
> +++ b/layerindex/tools/import_classic_wiki.py
> @@ -7,6 +7,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/layerindex/tools/import_layer.py b/layerindex/tools/import_=
layer.py
> index ace58e5..dfe887c 100755
> --- a/layerindex/tools/import_layer.py
> +++ b/layerindex/tools/import_layer.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/import_layers.py b/layerindex/tools/import=
_layers.py
> index 3548568..57b0f86 100755
> --- a/layerindex/tools/import_layers.py
> +++ b/layerindex/tools/import_layers.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/import_otherdistro.py b/layerindex/tools/i=
mport_otherdistro.py
> index 46eeeca..0c6640f 100755
> --- a/layerindex/tools/import_otherdistro.py
> +++ b/layerindex/tools/import_otherdistro.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/import_project.py b/layerindex/tools/impor=
t_project.py
> index 27a0de3..44cf6cc 100755
> --- a/layerindex/tools/import_project.py
> +++ b/layerindex/tools/import_project.py
> @@ -9,6 +9,8 @@
>  # Author: Liam R. Howlett <liam.howlett@windriver.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from urllib.parse import urlparse
>  import logging
> diff --git a/layerindex/tools/import_wiki_layers.py b/layerindex/tools/i=
mport_wiki_layers.py
> index 71f26ea..707d90e 100755
> --- a/layerindex/tools/import_wiki_layers.py
> +++ b/layerindex/tools/import_wiki_layers.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/tools/site_name.py b/layerindex/tools/site_name.=
py
> index 836a0c1..e1cff02 100755
> --- a/layerindex/tools/site_name.py
> +++ b/layerindex/tools/site_name.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/tools/update_classic_status.py b/layerindex/tool=
s/update_classic_status.py
> index 4edfc75..0bcf2e7 100755
> --- a/layerindex/tools/update_classic_status.py
> +++ b/layerindex/tools/update_classic_status.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/tools/webapi-test.py b/layerindex/tools/webapi-t=
est.py
> index 20fc36b..562fbe2 100755
> --- a/layerindex/tools/webapi-test.py
> +++ b/layerindex/tools/webapi-test.py
> @@ -5,6 +5,8 @@
>  # Copyright (C) 2019 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/update.py b/layerindex/update.py
> index e2aa96e..5a2642b 100755
> --- a/layerindex/update.py
> +++ b/layerindex/update.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
> index 1e5950c..42f99be 100644
> --- a/layerindex/update_layer.py
> +++ b/layerindex/update_layer.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/layerindex/urls.py b/layerindex/urls.py
> index ab2d028..7264b11 100644
> --- a/layerindex/urls.py
> +++ b/layerindex/urls.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013, 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.conf.urls import *
>  from django.views.generic import TemplateView, DetailView, ListView, Re=
directView
> diff --git a/layerindex/urls_branch.py b/layerindex/urls_branch.py
> index 9756f90..86b8b77 100644
> --- a/layerindex/urls_branch.py
> +++ b/layerindex/urls_branch.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013-2016 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.conf.urls import *
>  from django.views.defaults import page_not_found
> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index 2a1689b..9e28668 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -4,6 +4,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/layerindex/views.py b/layerindex/views.py
> index 83adb6a..91b3280 100644
> --- a/layerindex/views.py
> +++ b/layerindex/views.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2013-2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import os
>  import sys
> diff --git a/manage.py b/manage.py
> index a815fa3..0c073ac 100755
> --- a/manage.py
> +++ b/manage.py
> @@ -6,6 +6,8 @@
>  #
>  # Copyright (c) Django Software Foundation and individual contributors.
>  # All rights reserved.
> +#
> +# SPDX-License-Identifier: MIT
>
>  import os
>  import sys
> diff --git a/password_validation.py b/password_validation.py
> index 8669250..8c2fbbe 100644
> --- a/password_validation.py
> +++ b/password_validation.py
> @@ -1,3 +1,8 @@
> +# Copyright (c) Django Software Foundation and individual contributors.
> +# All rights reserved.
> +#
> +# SPDX-License-Identifier: MIT
> +
>  from django.core.exceptions import ValidationError
>  from django.utils.translation import ugettext as _
>
> diff --git a/pytest.ini b/pytest.ini
> index c067b05..a8d7834 100644
> --- a/pytest.ini
> +++ b/pytest.ini
> @@ -1,3 +1,8 @@
> +# Copyright (c) Django Software Foundation and individual contributors.
> +# All rights reserved.
> +#
> +# SPDX-License-Identifier: MIT
> +
>  [pytest]
>  DJANGO_SETTINGS_MODULE =3D settings
>  norecursedirs =3D .git layers
> diff --git a/rrs/__init__.py b/rrs/__init__.py
> index 3eab2fe..e2e9143 100644
> --- a/rrs/__init__.py
> +++ b/rrs/__init__.py
> @@ -1,2 +1,7 @@
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  default_app_config =3D 'rrs.apps.RecipeReportingSystemConfig'
> diff --git a/rrs/admin.py b/rrs/admin.py
> index a4712f2..402279f 100644
> --- a/rrs/admin.py
> +++ b/rrs/admin.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2014 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.utils.functional import curry
>
> diff --git a/rrs/apps.py b/rrs/apps.py
> index ea25060..1230718 100644
> --- a/rrs/apps.py
> +++ b/rrs/apps.py
> @@ -1,3 +1,9 @@
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  from django.apps import AppConfig
>
>
> diff --git a/rrs/context_processors.py b/rrs/context_processors.py
> index 0d79bd1..52e2c30 100644
> --- a/rrs/context_processors.py
> +++ b/rrs/context_processors.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2014 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import settings
>  from django.contrib.sites.models import Site
> diff --git a/rrs/models.py b/rrs/models.py
> index ba7e63c..f1bb527 100644
> --- a/rrs/models.py
> +++ b/rrs/models.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2014 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/rrs/tools/common.py b/rrs/tools/common.py
> index 6149792..1ce5dd5 100644
> --- a/rrs/tools/common.py
> +++ b/rrs/tools/common.py
> @@ -4,6 +4,8 @@
>  # Author: Anibal Limon <anibal.limon@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os
> diff --git a/rrs/tools/dump_upgrades.py b/rrs/tools/dump_upgrades.py
> index 011b91e..982f5a3 100755
> --- a/rrs/tools/dump_upgrades.py
> +++ b/rrs/tools/dump_upgrades.py
> @@ -5,6 +5,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/rrs/tools/historytool.py b/rrs/tools/historytool.py
> index 06456d1..9f03ade 100755
> --- a/rrs/tools/historytool.py
> +++ b/rrs/tools/historytool.py
> @@ -6,6 +6,8 @@
>  # Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/rrs/tools/rrs_distros.py b/rrs/tools/rrs_distros.py
> index e803328..e4c6045 100755
> --- a/rrs/tools/rrs_distros.py
> +++ b/rrs/tools/rrs_distros.py
> @@ -6,6 +6,8 @@
>  # Author: Anibal Limon <anibal.limon@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/rrs/tools/rrs_maintainer_history.py b/rrs/tools/rrs_maintai=
ner_history.py
> index b5cc510..15e1d17 100755
> --- a/rrs/tools/rrs_maintainer_history.py
> +++ b/rrs/tools/rrs_maintainer_history.py
> @@ -6,6 +6,8 @@
>  # Author: Anibal Limon <anibal.limon@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/rrs/tools/rrs_upgrade_history.py b/rrs/tools/rrs_upgrade_hi=
story.py
> index 5070cc2..9b74a05 100755
> --- a/rrs/tools/rrs_upgrade_history.py
> +++ b/rrs/tools/rrs_upgrade_history.py
> @@ -9,6 +9,8 @@
>  #          Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/rrs/tools/rrs_upstream_email.py b/rrs/tools/rrs_upstream_em=
ail.py
> index 0c3dbe2..8a6b188 100755
> --- a/rrs/tools/rrs_upstream_email.py
> +++ b/rrs/tools/rrs_upstream_email.py
> @@ -7,6 +7,8 @@
>  # Author: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_=
history.py
> index 4451c15..7dbf64c 100755
> --- a/rrs/tools/rrs_upstream_history.py
> +++ b/rrs/tools/rrs_upstream_history.py
> @@ -6,6 +6,8 @@
>  # Author: Anibal Limon <anibal.limon@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  import sys
>  import os.path
> diff --git a/rrs/tools/upgrade_history_internal.py b/rrs/tools/upgrade_h=
istory_internal.py
> index f48ea71..e3a96d9 100644
> --- a/rrs/tools/upgrade_history_internal.py
> +++ b/rrs/tools/upgrade_history_internal.py
> @@ -7,6 +7,8 @@
>  #          Paul Eggleton <paul.eggleton@linux.intel.com>
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>
>  import sys
> diff --git a/rrs/urls.py b/rrs/urls.py
> index 30d86b7..63426a9 100644
> --- a/rrs/urls.py
> +++ b/rrs/urls.py
> @@ -1,3 +1,11 @@
> +# rrs-web - URLS
> +#
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  from django.conf.urls import include, url
>
>  from rrs.models import Release, Milestone
> diff --git a/rrs/views.py b/rrs/views.py
> index 9c36a48..68fc4f9 100644
> --- a/rrs/views.py
> +++ b/rrs/views.py
> @@ -1,3 +1,11 @@
> +# rrs-web - views
> +#
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  import urllib
>
>  import csv
> diff --git a/rrs/wsgi.py b/rrs/wsgi.py
> index 1d7e7b7..c25232e 100644
> --- a/rrs/wsgi.py
> +++ b/rrs/wsgi.py
> @@ -1,3 +1,9 @@
> +# Copyright (C) 2014 Intel Corporation
> +#
> +# Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
> +
>  import os
>
>  os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")
> diff --git a/settings.py b/settings.py
> index 525a0c1..1dd6ebc 100644
> --- a/settings.py
> +++ b/settings.py
> @@ -2,6 +2,8 @@
>  #
>  # Based on settings.py from the Django project template
>  # Copyright (c) Django Software Foundation and individual contributors.
> +#
> +# SPDX-License-Identifier: MIT
>
>  import os
>
> diff --git a/tests/test_update.py b/tests/test_update.py
> index e00775d..588b2ed 100644
> --- a/tests/test_update.py
> +++ b/tests/test_update.py
> @@ -3,6 +3,8 @@
>  # Copyright (C) 2018 Intel Corporation
>  #
>  # Licensed under the MIT license, see COPYING.MIT for details
> +#
> +# SPDX-License-Identifier: MIT
>
>  # NOTE: requires pytest-django. Run using "pytest" from the root
>  # of the repository (add -s to avoid suppressing the output of commands
> diff --git a/urls.py b/urls.py
> index 67d64b2..76f2f73 100644
> --- a/urls.py
> +++ b/urls.py
> @@ -4,6 +4,8 @@
>  #
>  # Copyright (c) Django Software Foundation and individual contributors.
>  # All rights reserved.
> +#
> +# SPDX-License-Identifier: MIT
>
>  from django.conf.urls import include, url
>  from django.urls import reverse_lazy
> diff --git a/wsgi.py b/wsgi.py
> index 99f0915..b0d82ac 100644
> --- a/wsgi.py
> +++ b/wsgi.py
> @@ -1,3 +1,8 @@
> +# Copyright (c) Django Software Foundation and individual contributors.
> +# All rights reserved.
> +#
> +# SPDX-License-Identifier: MIT
> +
>  import os, sys
>  os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")
>  sys.path.append('/var/www/html/layerindex')
> --
> 2.17.1
>
>
>=20
>


--=20
Paul Barker
Konsulko Group
